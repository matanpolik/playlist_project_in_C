#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_SIZE 255
#define HELPER_MESSAGE "## Awesome playlist manager ##\nCOMMANDS:\n  e\t\t Exit the system.\n  h\t\t Print this message.\n  >\t\t Finish current song.\n  +<song_name>\t Set the song <song_name> to be the next song.\n  -<song_name>\t Remove the song <song_name> form the playlist.\n"
#define WELCOME_MESSAGE "Please insert your desired operation, for help enter: h\n"

typedef struct node {
    char name[MAX_SIZE];
    struct node* next;
}Song;

void  print_playlist(Song*);

Song* song_ended(Song*);
Song* next_song(Song*,char*);
Song* remove_song(Song*,char*);
void  free_playlist(Song*);


int main()
{
    char s[MAX_SIZE+1] = {0};
    Song *playlist = NULL;
    printf(WELCOME_MESSAGE);
    while(s[0] != 'e')
    {
        switch (s[0]) {
            case 0:
            case 'e':
                break;
            case '>':
                playlist = song_ended(playlist);
                break;
            case '+':
                playlist = next_song(playlist,s+1);
                break;
            case '-':
                playlist = remove_song(playlist,s+1);
                break;
            case 'h':
                printf(HELPER_MESSAGE);
                break;
            default:
                printf("Undefined command!\n%s",  WELCOME_MESSAGE);
        }
        print_playlist(playlist);
        printf(">>");
        if (!scanf("%s",s)) {
            printf("Input error!\n%s", WELCOME_MESSAGE);
            s[0] = 0;
        }
    }
    free_playlist(playlist);
    return 0;
}
void print_playlist(Song* playlist)
{
    while(playlist)
    {
        printf(playlist->next?"%s->":"%s\n",playlist->name);
        playlist = playlist->next;
    }
}

Song* song_ended(Song* playlist) /* mission one */
{
    Song *p = playlist;
    if(playlist==NULL) return NULL; /* in case that there is no songs at all */
    while(p->next != NULL){ /* finds the last song */
        p = p->next;
    }
    p->next = playlist; /* switching the first song to be the last one*/
    playlist = playlist->next; /* switching the first song to be the last one*/
    p->next->next = NULL;/* switching the first song to be the last one*/
    return playlist;
}
Song* next_song(Song* playlist,char* name) /* mission two */
{
    Song *p = playlist, *temp;
    if((temp = (Song*)malloc(sizeof(Song)))== NULL){ /* creating new song in memory */
                printf("Memory error!"); /* malloc check */
            }
    if(playlist == NULL){ /* if the playlist in empty - there is no songs at all*/
        strcpy(temp->name, name); /* rename temp(new song) name to the input song name */
        playlist=temp; /* placing the new song first in the playlist*/
        return playlist;
    }
    if(!strcmp(name, playlist->name)){ /* for the case that the song is already first in line */
        return playlist;
    }

    if(playlist->next == NULL){ /* for the case that there is only one song (and he is different from the input */
        strcpy(temp->name, name); /* rename the temp name to the input name */
        playlist->next=temp; /* placing the new song second in the playlist */
        temp->next = NULL;
        return playlist;
    }
    while(p->next != NULL && (strcmp(name, p->next->name))){ /* checking if the song(from the input) is already in the playlist */
        p = p->next;
        if((p->next)==NULL){ /* if the song is not in the playlist */
            strcpy(temp->name,name); /*creating new song with temp and the input */
            temp->next = playlist->next; /* placing the new song second in the playlist*/
            playlist->next = temp;
            return playlist;
        }
    }
    temp = p->next; /* in case that the song is already in the playlist */
    p->next = temp->next; /* replacing the song to be second in the playlist */
    temp->next = playlist->next;
    playlist->next = temp;

    return playlist;
}

Song* remove_song(Song* playlist,char* name) /* mission 3 */
{
    Song* p = playlist, *temp;
    if(playlist==NULL) return NULL; /* if the playlist in empty - nothing happpen*/
    if(!strcmp(name, playlist->name)){ /* checking if the song that we want to remove is first */
        if(playlist->next == NULL){ /* if the song is first AND there is only one song*/
            free(playlist); /* free the song - remove him from playlist*/
            return NULL;
        }
        else{ /* if the song is first AND theres more songs after*/
            temp=playlist->next;/* saving the rest of the playlist */
            free(playlist); /* remove the first song */
            return temp;
        }
    }
    while(p->next != NULL && (strcmp(name, p->next->name))){ /* finding one song before the song that we want to remove */
        p = p->next;
        if(p->next == NULL) return playlist; /* if the song is not in the playlist at all */
    }
    temp = p->next->next; /* saving what the song point to */
    free(p->next); /* free the song - remove it */
    p->next = temp; /* connect what was holding the song and what the song point to */
    return playlist;
}


void free_playlist(Song* playlist) /* mission 4 */
{
    Song *p1, *p2 = playlist;
    while (p2 != NULL) { /* free every song with 2 pointers */
        p1 = p2->next; /* saves what p2 points to */
        free (p2); /* free p2 */
        p2 = p1;
    }
    return;
}