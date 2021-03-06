.class public Lnluparser/scheme/MusicIntent;
.super Ljava/lang/Object;

# interfaces
.implements Lnluparser/scheme/Intent;


# instance fields
.field album:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "album"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "album"
    .end annotation
.end field

.field artist:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "artist"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "artist"
    .end annotation
.end field

.field artistType:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "artistType"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "artistType"
    .end annotation
.end field

.field billboard:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "billboard"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "billboard"
    .end annotation
.end field

.field episode:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "episode"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "episode"
    .end annotation
.end field

.field genre:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "genre"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "genre"
    .end annotation
.end field

.field keyword:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "keyword"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "keyword"
    .end annotation
.end field

.field language:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "language"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "language"
    .end annotation
.end field

.field lyrics:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "lyrics"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lyrics"
    .end annotation
.end field

.field mood:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "mood"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mood"
    .end annotation
.end field

.field musicTag:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "musicTag"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "musicTag"
    .end annotation
.end field

.field scene:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "scene"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "scene"
    .end annotation
.end field

.field song:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "song"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "song"
    .end annotation
.end field

.field songlist:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "songlist"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "songlist"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lnluparser/scheme/MusicIntent;->album:Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lnluparser/scheme/MusicIntent;->artist:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistType()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lnluparser/scheme/MusicIntent;->artistType:Ljava/lang/String;

    return-object v0
.end method

.method public getBillboard()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lnluparser/scheme/MusicIntent;->billboard:Ljava/lang/String;

    return-object v0
.end method

.method public getEpisode()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lnluparser/scheme/MusicIntent;->episode:Ljava/lang/String;

    return-object v0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lnluparser/scheme/MusicIntent;->genre:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lnluparser/scheme/MusicIntent;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lnluparser/scheme/MusicIntent;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getLyrics()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lnluparser/scheme/MusicIntent;->lyrics:Ljava/lang/String;

    return-object v0
.end method

.method public getMood()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lnluparser/scheme/MusicIntent;->mood:Ljava/lang/String;

    return-object v0
.end method

.method public getMusicTag()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lnluparser/scheme/MusicIntent;->musicTag:Ljava/lang/String;

    return-object v0
.end method

.method public getScene()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lnluparser/scheme/MusicIntent;->scene:Ljava/lang/String;

    return-object v0
.end method

.method public getSong()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lnluparser/scheme/MusicIntent;->song:Ljava/lang/String;

    return-object v0
.end method

.method public getSonglist()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lnluparser/scheme/MusicIntent;->songlist:Ljava/lang/String;

    return-object v0
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 0
    .param p1, "album"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    iput-object p1, p0, Lnluparser/scheme/MusicIntent;->album:Ljava/lang/String;

    return-void
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0
    .param p1, "artist"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    iput-object p1, p0, Lnluparser/scheme/MusicIntent;->artist:Ljava/lang/String;

    return-void
.end method

.method public setArtistType(Ljava/lang/String;)V
    .locals 0
    .param p1, "artistType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    iput-object p1, p0, Lnluparser/scheme/MusicIntent;->artistType:Ljava/lang/String;

    return-void
.end method

.method public setBillboard(Ljava/lang/String;)V
    .locals 0
    .param p1, "billboard"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    iput-object p1, p0, Lnluparser/scheme/MusicIntent;->billboard:Ljava/lang/String;

    return-void
.end method

.method public setEpisode(Ljava/lang/String;)V
    .locals 0
    .param p1, "episode"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    iput-object p1, p0, Lnluparser/scheme/MusicIntent;->episode:Ljava/lang/String;

    return-void
.end method

.method public setGenre(Ljava/lang/String;)V
    .locals 0
    .param p1, "genre"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    iput-object p1, p0, Lnluparser/scheme/MusicIntent;->genre:Ljava/lang/String;

    return-void
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 0
    .param p1, "keyword"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    iput-object p1, p0, Lnluparser/scheme/MusicIntent;->keyword:Ljava/lang/String;

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0
    .param p1, "language"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    iput-object p1, p0, Lnluparser/scheme/MusicIntent;->language:Ljava/lang/String;

    return-void
.end method

.method public setLyrics(Ljava/lang/String;)V
    .locals 0
    .param p1, "lyrics"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    iput-object p1, p0, Lnluparser/scheme/MusicIntent;->lyrics:Ljava/lang/String;

    return-void
.end method

.method public setMood(Ljava/lang/String;)V
    .locals 0
    .param p1, "mood"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    iput-object p1, p0, Lnluparser/scheme/MusicIntent;->mood:Ljava/lang/String;

    return-void
.end method

.method public setMusicTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "musicTag"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    iput-object p1, p0, Lnluparser/scheme/MusicIntent;->musicTag:Ljava/lang/String;

    return-void
.end method

.method public setScene(Ljava/lang/String;)V
    .locals 0
    .param p1, "scene"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    iput-object p1, p0, Lnluparser/scheme/MusicIntent;->scene:Ljava/lang/String;

    return-void
.end method

.method public setSong(Ljava/lang/String;)V
    .locals 0
    .param p1, "song"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    iput-object p1, p0, Lnluparser/scheme/MusicIntent;->song:Ljava/lang/String;

    return-void
.end method

.method public setSonglist(Ljava/lang/String;)V
    .locals 0
    .param p1, "songlist"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    iput-object p1, p0, Lnluparser/scheme/MusicIntent;->songlist:Ljava/lang/String;

    return-void
.end method
