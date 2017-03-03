.class public Lcom/wepie/snake/helper/config/SkinConfig;
.super Ljava/lang/Object;
.source "SkinConfig.java"


# instance fields
.field public cost:I

.field public headimgurl:Ljava/lang/String;

.field public imgurl:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public skin_id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInUserSkinId()I
    .locals 3

    .prologue
    .line 29
    invoke-static {}, Lcom/wepie/snake/helper/pref/GamePrefUtil;->getInstance()Lcom/wepie/snake/helper/pref/GamePrefUtil;

    move-result-object v0

    const-string v1, "skin_id"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/wepie/snake/helper/pref/GamePrefUtil;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public isSkinInUse()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-static {}, Lcom/wepie/snake/helper/pref/GamePrefUtil;->getInstance()Lcom/wepie/snake/helper/pref/GamePrefUtil;

    move-result-object v1

    const-string v2, "skin_id"

    invoke-virtual {v1, v2, v0}, Lcom/wepie/snake/helper/pref/GamePrefUtil;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget v2, p0, Lcom/wepie/snake/helper/config/SkinConfig;->skin_id:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public setSkinUsed(Z)V
    .locals 3
    .param p1, "used"    # Z

    .prologue
    .line 25
    invoke-static {}, Lcom/wepie/snake/helper/pref/GamePrefUtil;->getInstance()Lcom/wepie/snake/helper/pref/GamePrefUtil;

    move-result-object v1

    const-string v2, "skin_id"

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/wepie/snake/helper/config/SkinConfig;->skin_id:I

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/wepie/snake/helper/pref/GamePrefUtil;->setInt(Ljava/lang/String;I)V

    .line 26
    return-void

    .line 25
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
