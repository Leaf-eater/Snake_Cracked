.class public Lcom/wepie/snake/module/login/LoginHelper;
.super Ljava/lang/Object;
.source "LoginHelper.java"


# static fields
.field private static final PREF_FILE:Ljava/lang/String; = "login_user"

.field private static pref:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15
    invoke-static {}, Lcom/wepie/snake/base/SkApplication;->getInstance()Lcom/wepie/snake/base/SkApplication;

    move-result-object v0

    const-string v1, "login_user"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/wepie/snake/base/SkApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/wepie/snake/module/login/LoginHelper;->pref:Landroid/content/SharedPreferences;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAvatar()Ljava/lang/String;
    .locals 3

    .prologue
    .line 91
    sget-object v0, Lcom/wepie/snake/module/login/LoginHelper;->pref:Landroid/content/SharedPreferences;

    const-string v1, "avatar"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLoginType()I
    .locals 3

    .prologue
    .line 95
    sget-object v0, Lcom/wepie/snake/module/login/LoginHelper;->pref:Landroid/content/SharedPreferences;

    const-string v1, "login_type"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getLoginUser()Lcom/wepie/snake/module/login/UserInfo;
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 41
    new-instance v0, Lcom/wepie/snake/module/login/UserInfo;

    invoke-direct {v0}, Lcom/wepie/snake/module/login/UserInfo;-><init>()V

    .line 43
    .local v0, "userInfo":Lcom/wepie/snake/module/login/UserInfo;
    sget-object v1, Lcom/wepie/snake/module/login/LoginHelper;->pref:Landroid/content/SharedPreferences;

    const-string v2, "uid"

    const-string v3, "-1"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wepie/snake/module/login/UserInfo;->uid:Ljava/lang/String;

    .line 44
    sget-object v1, Lcom/wepie/snake/module/login/LoginHelper;->pref:Landroid/content/SharedPreferences;

    const-string v2, "nickname"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wepie/snake/module/login/UserInfo;->nickname:Ljava/lang/String;

    .line 45
    sget-object v1, Lcom/wepie/snake/module/login/LoginHelper;->pref:Landroid/content/SharedPreferences;

    const-string v2, "gender"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/wepie/snake/module/login/UserInfo;->gender:I

    .line 46
    sget-object v1, Lcom/wepie/snake/module/login/LoginHelper;->pref:Landroid/content/SharedPreferences;

    const-string v2, "age"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/wepie/snake/module/login/UserInfo;->age:I

    .line 48
    sget-object v1, Lcom/wepie/snake/module/login/LoginHelper;->pref:Landroid/content/SharedPreferences;

    const-string v2, "avatar"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wepie/snake/module/login/UserInfo;->avatar:Ljava/lang/String;

    .line 49
    sget-object v1, Lcom/wepie/snake/module/login/LoginHelper;->pref:Landroid/content/SharedPreferences;

    const-string v2, "register_time"

    invoke-interface {v1, v2, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/wepie/snake/module/login/UserInfo;->register_time:J

    .line 50
    sget-object v1, Lcom/wepie/snake/module/login/LoginHelper;->pref:Landroid/content/SharedPreferences;

    const-string v2, "register_device_id"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wepie/snake/module/login/UserInfo;->register_device_id:Ljava/lang/String;

    .line 51
    sget-object v1, Lcom/wepie/snake/module/login/LoginHelper;->pref:Landroid/content/SharedPreferences;

    const-string v2, "register_platform"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/wepie/snake/module/login/UserInfo;->register_platform:I

    .line 53
    sget-object v1, Lcom/wepie/snake/module/login/LoginHelper;->pref:Landroid/content/SharedPreferences;

    const-string v2, "qq_uid"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wepie/snake/module/login/UserInfo;->qq_uid:Ljava/lang/String;

    .line 54
    sget-object v1, Lcom/wepie/snake/module/login/LoginHelper;->pref:Landroid/content/SharedPreferences;

    const-string v2, "wechat_uid"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wepie/snake/module/login/UserInfo;->wechat_uid:Ljava/lang/String;

    .line 55
    sget-object v1, Lcom/wepie/snake/module/login/LoginHelper;->pref:Landroid/content/SharedPreferences;

    const-string v2, "coin"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/wepie/snake/module/login/UserInfo;->coin:I

    .line 56
    sget-object v1, Lcom/wepie/snake/module/login/LoginHelper;->pref:Landroid/content/SharedPreferences;

    const-string v2, "nickname_update_time"

    invoke-interface {v1, v2, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/wepie/snake/module/login/UserInfo;->nickname_update_time:J

    .line 58
    sget-object v1, Lcom/wepie/snake/module/login/LoginHelper;->pref:Landroid/content/SharedPreferences;

    const-string v2, "push_channel"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/wepie/snake/module/login/UserInfo;->push_channel:I

    .line 59
    sget-object v1, Lcom/wepie/snake/module/login/LoginHelper;->pref:Landroid/content/SharedPreferences;

    const-string v2, "push_id"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wepie/snake/module/login/UserInfo;->push_id:Ljava/lang/String;

    .line 60
    sget-object v1, Lcom/wepie/snake/module/login/LoginHelper;->pref:Landroid/content/SharedPreferences;

    const-string v2, "login_type"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/wepie/snake/module/login/UserInfo;->login_type:I

    .line 61
    sget-object v1, Lcom/wepie/snake/module/login/LoginHelper;->pref:Landroid/content/SharedPreferences;

    const-string v2, "sid"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wepie/snake/module/login/UserInfo;->sid:Ljava/lang/String;

    .line 63
    return-object v0
.end method

.method public static getSid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 87
    sget-object v0, Lcom/wepie/snake/module/login/LoginHelper;->pref:Landroid/content/SharedPreferences;

    const-string v1, "sid"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 83
    sget-object v0, Lcom/wepie/snake/module/login/LoginHelper;->pref:Landroid/content/SharedPreferences;

    const-string v1, "uid"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVisitorNick()Ljava/lang/String;
    .locals 3

    .prologue
    .line 115
    sget-object v0, Lcom/wepie/snake/module/login/LoginHelper;->pref:Landroid/content/SharedPreferences;

    const-string v1, "visitor_nick"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isQQUser()Z
    .locals 2

    .prologue
    .line 103
    invoke-static {}, Lcom/wepie/snake/module/login/LoginHelper;->getLoginType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVisitor()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 99
    invoke-static {}, Lcom/wepie/snake/module/login/LoginHelper;->getLoginType()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWXUser()Z
    .locals 2

    .prologue
    .line 107
    invoke-static {}, Lcom/wepie/snake/module/login/LoginHelper;->getLoginType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static saveLoginUser(Lcom/wepie/snake/module/login/UserInfo;)V
    .locals 4
    .param p0, "user"    # Lcom/wepie/snake/module/login/UserInfo;

    .prologue
    .line 19
    sget-object v1, Lcom/wepie/snake/module/login/LoginHelper;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 20
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "uid"

    iget-object v2, p0, Lcom/wepie/snake/module/login/UserInfo;->uid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 21
    const-string v1, "nickname"

    iget-object v2, p0, Lcom/wepie/snake/module/login/UserInfo;->nickname:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 22
    const-string v1, "gender"

    iget v2, p0, Lcom/wepie/snake/module/login/UserInfo;->gender:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 23
    const-string v1, "age"

    iget v2, p0, Lcom/wepie/snake/module/login/UserInfo;->age:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 24
    const-string v1, "avatar"

    iget-object v2, p0, Lcom/wepie/snake/module/login/UserInfo;->avatar:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 25
    const-string v1, "register_time"

    iget-wide v2, p0, Lcom/wepie/snake/module/login/UserInfo;->register_time:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 26
    const-string v1, "register_device_id"

    iget-object v2, p0, Lcom/wepie/snake/module/login/UserInfo;->register_device_id:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 27
    const-string v1, "register_platform"

    iget v2, p0, Lcom/wepie/snake/module/login/UserInfo;->register_platform:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 28
    const-string v1, "qq_uid"

    iget-object v2, p0, Lcom/wepie/snake/module/login/UserInfo;->qq_uid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 29
    const-string v1, "wechat_uid"

    iget-object v2, p0, Lcom/wepie/snake/module/login/UserInfo;->wechat_uid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 30
    const-string v1, "coin"

    iget v2, p0, Lcom/wepie/snake/module/login/UserInfo;->coin:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 31
    const-string v1, "nickname_update_time"

    iget-wide v2, p0, Lcom/wepie/snake/module/login/UserInfo;->nickname_update_time:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 32
    const-string v1, "push_channel"

    iget v2, p0, Lcom/wepie/snake/module/login/UserInfo;->push_channel:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 33
    const-string v1, "push_id"

    iget-object v2, p0, Lcom/wepie/snake/module/login/UserInfo;->push_id:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 34
    const-string v1, "login_type"

    iget v2, p0, Lcom/wepie/snake/module/login/UserInfo;->login_type:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 35
    const-string v1, "sid"

    iget-object v2, p0, Lcom/wepie/snake/module/login/UserInfo;->sid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 37
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 38
    return-void
.end method

.method public static saveVisitorNick(Ljava/lang/String;)V
    .locals 2
    .param p0, "nick"    # Ljava/lang/String;

    .prologue
    .line 111
    sget-object v0, Lcom/wepie/snake/module/login/LoginHelper;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "visitor_nick"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 112
    return-void
.end method

.method public static updateAge(I)V
    .locals 2
    .param p0, "age"    # I

    .prologue
    .line 79
    sget-object v0, Lcom/wepie/snake/module/login/LoginHelper;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "age"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 80
    return-void
.end method

.method public static updateAvatar(Ljava/lang/String;)V
    .locals 2
    .param p0, "avatar"    # Ljava/lang/String;

    .prologue
    .line 75
    sget-object v0, Lcom/wepie/snake/module/login/LoginHelper;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "avatar"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 76
    return-void
.end method

.method public static updateGender(I)V
    .locals 2
    .param p0, "gender"    # I

    .prologue
    .line 71
    sget-object v0, Lcom/wepie/snake/module/login/LoginHelper;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "gender"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 72
    return-void
.end method

.method public static updateNick(Ljava/lang/String;)V
    .locals 2
    .param p0, "nick"    # Ljava/lang/String;

    .prologue
    .line 67
    sget-object v0, Lcom/wepie/snake/module/login/LoginHelper;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "nickname"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 68
    return-void
.end method
