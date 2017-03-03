.class public Lcom/wepie/snake/module/game/GameTypeUtil;
.super Ljava/lang/Object;
.source "GameTypeUtil.java"


# static fields
.field public static final GAME_TYPE_ENDLESS:I = 0x1

.field public static final GAME_TYPE_TIME_LIMIT:I = 0x2

.field private static final PREF_KEY:Ljava/lang/String; = "game_type"

.field private static final REMAIN_TIME:Ljava/lang/String; = "REMAIN_TIME"

.field public static final TIME_LIMIT:I = 0x12c


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGameType()I
    .locals 3

    .prologue
    .line 20
    invoke-static {}, Lcom/wepie/snake/helper/pref/GamePrefUtil;->getInstance()Lcom/wepie/snake/helper/pref/GamePrefUtil;

    move-result-object v0

    const-string v1, "game_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/wepie/snake/helper/pref/GamePrefUtil;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getGameTypeName(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 24
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 25
    const-string v0, "\u9650\u65f6\u6a21\u5f0f"

    .line 27
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "\u65e0\u5c3d\u6a21\u5f0f"

    goto :goto_0
.end method

.method public static getRemainTime()I
    .locals 3

    .prologue
    .line 42
    invoke-static {}, Lcom/wepie/snake/helper/pref/GamePrefUtil;->getInstance()Lcom/wepie/snake/helper/pref/GamePrefUtil;

    move-result-object v0

    const-string v1, "REMAIN_TIME"

    const/16 v2, 0x12c

    invoke-virtual {v0, v1, v2}, Lcom/wepie/snake/helper/pref/GamePrefUtil;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getTimeString(I)Ljava/lang/String;
    .locals 5
    .param p0, "second"    # I

    .prologue
    .line 32
    div-int/lit8 v0, p0, 0x3c

    .line 33
    .local v0, "m":I
    rem-int/lit8 v1, p0, 0x3c

    .line 34
    .local v1, "s":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0
.end method

.method public static saveRemainTime(I)V
    .locals 2
    .param p0, "timeSecond"    # I

    .prologue
    .line 38
    invoke-static {}, Lcom/wepie/snake/helper/pref/GamePrefUtil;->getInstance()Lcom/wepie/snake/helper/pref/GamePrefUtil;

    move-result-object v0

    const-string v1, "REMAIN_TIME"

    invoke-virtual {v0, v1, p0}, Lcom/wepie/snake/helper/pref/GamePrefUtil;->setInt(Ljava/lang/String;I)V

    .line 39
    return-void
.end method

.method public static setGameType(I)V
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 16
    invoke-static {}, Lcom/wepie/snake/helper/pref/GamePrefUtil;->getInstance()Lcom/wepie/snake/helper/pref/GamePrefUtil;

    move-result-object v0

    const-string v1, "game_type"

    invoke-virtual {v0, v1, p0}, Lcom/wepie/snake/helper/pref/GamePrefUtil;->setInt(Ljava/lang/String;I)V

    .line 17
    return-void
.end method
