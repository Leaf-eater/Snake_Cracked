.class public Lcom/wepie/snake/helper/pref/UserPrefUtil;
.super Ljava/lang/Object;
.source "UserPrefUtil.java"


# static fields
.field public static final LOCAL_AVATAR_URL:Ljava/lang/String; = "local_avatar_url"

.field private static final PREF_NAME:Ljava/lang/String; = "user_pref"

.field private static sInstance:Lcom/wepie/snake/helper/pref/UserPrefUtil;


# instance fields
.field private mPref:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {}, Lcom/wepie/snake/base/SkApplication;->getInstance()Lcom/wepie/snake/base/SkApplication;

    move-result-object v0

    const-string v1, "user_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/wepie/snake/base/SkApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/wepie/snake/helper/pref/UserPrefUtil;->mPref:Landroid/content/SharedPreferences;

    .line 28
    return-void
.end method

.method public static getInstance()Lcom/wepie/snake/helper/pref/UserPrefUtil;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/wepie/snake/helper/pref/UserPrefUtil;->sInstance:Lcom/wepie/snake/helper/pref/UserPrefUtil;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/wepie/snake/helper/pref/UserPrefUtil;

    invoke-direct {v0}, Lcom/wepie/snake/helper/pref/UserPrefUtil;-><init>()V

    sput-object v0, Lcom/wepie/snake/helper/pref/UserPrefUtil;->sInstance:Lcom/wepie/snake/helper/pref/UserPrefUtil;

    .line 23
    :cond_0
    sget-object v0, Lcom/wepie/snake/helper/pref/UserPrefUtil;->sInstance:Lcom/wepie/snake/helper/pref/UserPrefUtil;

    return-object v0
.end method

.method private getKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/wepie/snake/module/login/LoginHelper;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/wepie/snake/helper/pref/UserPrefUtil;->mPref:Landroid/content/SharedPreferences;

    invoke-direct {p0, p1}, Lcom/wepie/snake/helper/pref/UserPrefUtil;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/wepie/snake/helper/pref/UserPrefUtil;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/wepie/snake/helper/pref/UserPrefUtil;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 32
    return-void
.end method
