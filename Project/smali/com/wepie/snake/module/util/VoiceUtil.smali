.class public Lcom/wepie/snake/module/util/VoiceUtil;
.super Ljava/lang/Object;
.source "VoiceUtil.java"


# static fields
.field private static final BEKILLED:Ljava/lang/String; = "BEKILLED"

.field private static final END:Ljava/lang/String; = "END"

.field private static final KILLING:Ljava/lang/String; = "KILLING"

.field private static voiceUtil:Lcom/wepie/snake/module/util/VoiceUtil;


# instance fields
.field private mSourceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private soundPool:Landroid/media/SoundPool;


# direct methods
.method private constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v1, Landroid/media/SoundPool;

    const/16 v2, 0x3e8

    const/4 v3, 0x3

    const/16 v4, 0xa

    invoke-direct {v1, v2, v3, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Lcom/wepie/snake/module/util/VoiceUtil;->soundPool:Landroid/media/SoundPool;

    .line 40
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/wepie/snake/module/util/VoiceUtil;->mSourceMap:Ljava/util/HashMap;

    .line 41
    invoke-static {}, Lcom/wepie/snake/base/SkApplication;->getInstance()Lcom/wepie/snake/base/SkApplication;

    move-result-object v0

    .line 42
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/wepie/snake/module/util/VoiceUtil;->mSourceMap:Ljava/util/HashMap;

    const-string v2, "KILLING"

    iget-object v3, p0, Lcom/wepie/snake/module/util/VoiceUtil;->soundPool:Landroid/media/SoundPool;

    const v4, 0x7f060003

    invoke-virtual {v3, v0, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v1, p0, Lcom/wepie/snake/module/util/VoiceUtil;->mSourceMap:Ljava/util/HashMap;

    const-string v2, "END"

    iget-object v3, p0, Lcom/wepie/snake/module/util/VoiceUtil;->soundPool:Landroid/media/SoundPool;

    const v4, 0x7f060002

    invoke-virtual {v3, v0, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v1, p0, Lcom/wepie/snake/module/util/VoiceUtil;->mSourceMap:Ljava/util/HashMap;

    const-string v2, "BEKILLED"

    iget-object v3, p0, Lcom/wepie/snake/module/util/VoiceUtil;->soundPool:Landroid/media/SoundPool;

    const/high16 v4, 0x7f060000

    invoke-virtual {v3, v0, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    return-void
.end method

.method public static getInstance()Lcom/wepie/snake/module/util/VoiceUtil;
    .locals 2

    .prologue
    .line 28
    sget-object v0, Lcom/wepie/snake/module/util/VoiceUtil;->voiceUtil:Lcom/wepie/snake/module/util/VoiceUtil;

    if-nez v0, :cond_1

    .line 29
    const-class v1, Lcom/wepie/snake/module/util/VoiceUtil;

    monitor-enter v1

    .line 30
    :try_start_0
    sget-object v0, Lcom/wepie/snake/module/util/VoiceUtil;->voiceUtil:Lcom/wepie/snake/module/util/VoiceUtil;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/wepie/snake/module/util/VoiceUtil;

    invoke-direct {v0}, Lcom/wepie/snake/module/util/VoiceUtil;-><init>()V

    sput-object v0, Lcom/wepie/snake/module/util/VoiceUtil;->voiceUtil:Lcom/wepie/snake/module/util/VoiceUtil;

    .line 33
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :cond_1
    sget-object v0, Lcom/wepie/snake/module/util/VoiceUtil;->voiceUtil:Lcom/wepie/snake/module/util/VoiceUtil;

    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized pauseBgVoic()V
    .locals 1

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/wepie/snake/module/util/VoiceUtil;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/wepie/snake/module/util/VoiceUtil;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :cond_0
    monitor-exit p0

    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized playBgVoice()V
    .locals 3

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/wepie/snake/helper/pref/GamePrefUtil;->getInstance()Lcom/wepie/snake/helper/pref/GamePrefUtil;

    move-result-object v0

    const-string v1, "game_bg_voc"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/wepie/snake/helper/pref/GamePrefUtil;->getBoolean(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 60
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 52
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/wepie/snake/module/util/VoiceUtil;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 53
    iget-object v0, p0, Lcom/wepie/snake/module/util/VoiceUtil;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 56
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/wepie/snake/base/SkApplication;->getInstance()Lcom/wepie/snake/base/SkApplication;

    move-result-object v0

    const v1, 0x7f060001

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/wepie/snake/module/util/VoiceUtil;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 57
    iget-object v0, p0, Lcom/wepie/snake/module/util/VoiceUtil;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/wepie/snake/module/util/VoiceUtil;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 59
    iget-object v0, p0, Lcom/wepie/snake/module/util/VoiceUtil;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public startBeKilledVoice()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 96
    invoke-static {}, Lcom/wepie/snake/helper/pref/GamePrefUtil;->getInstance()Lcom/wepie/snake/helper/pref/GamePrefUtil;

    move-result-object v0

    const-string v1, "game_voc"

    invoke-virtual {v0, v1, v4}, Lcom/wepie/snake/helper/pref/GamePrefUtil;->getBoolean(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/wepie/snake/module/util/VoiceUtil;->soundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/wepie/snake/module/util/VoiceUtil;->mSourceMap:Ljava/util/HashMap;

    const-string v3, "BEKILLED"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v5, 0x0

    move v3, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/wepie/snake/module/util/VoiceUtil;->stopBgVoice()V

    .line 100
    return-void
.end method

.method public startEndVoice()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 86
    invoke-static {}, Lcom/wepie/snake/helper/pref/GamePrefUtil;->getInstance()Lcom/wepie/snake/helper/pref/GamePrefUtil;

    move-result-object v0

    const-string v1, "game_voc"

    invoke-virtual {v0, v1, v4}, Lcom/wepie/snake/helper/pref/GamePrefUtil;->getBoolean(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/wepie/snake/module/util/VoiceUtil;->soundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/wepie/snake/module/util/VoiceUtil;->mSourceMap:Ljava/util/HashMap;

    const-string v3, "END"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v5, 0x0

    move v3, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/wepie/snake/module/util/VoiceUtil;->stopBgVoice()V

    .line 90
    return-void
.end method

.method public startKillingVoice()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 80
    invoke-static {}, Lcom/wepie/snake/helper/pref/GamePrefUtil;->getInstance()Lcom/wepie/snake/helper/pref/GamePrefUtil;

    move-result-object v0

    const-string v1, "game_voc"

    invoke-virtual {v0, v1, v4}, Lcom/wepie/snake/helper/pref/GamePrefUtil;->getBoolean(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/wepie/snake/module/util/VoiceUtil;->soundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/wepie/snake/module/util/VoiceUtil;->mSourceMap:Ljava/util/HashMap;

    const-string v3, "KILLING"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v5, 0x0

    move v3, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 83
    :cond_0
    return-void
.end method

.method public declared-synchronized stopBgVoice()V
    .locals 2

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/wepie/snake/module/util/VoiceUtil;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/wepie/snake/module/util/VoiceUtil;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 73
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/wepie/snake/module/util/VoiceUtil;->mediaPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :goto_0
    monitor-exit p0

    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 70
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
