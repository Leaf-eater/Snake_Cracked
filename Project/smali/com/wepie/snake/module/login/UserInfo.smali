.class public Lcom/wepie/snake/module/login/UserInfo;
.super Ljava/lang/Object;
.source "UserInfo.java"


# static fields
.field public static final KEY_AGE:Ljava/lang/String; = "age"

.field public static final KEY_AVATAR:Ljava/lang/String; = "avatar"

.field public static final KEY_COIN:Ljava/lang/String; = "coin"

.field public static final KEY_GENDER:Ljava/lang/String; = "gender"

.field public static final KEY_LOGIN_TYPE:Ljava/lang/String; = "login_type"

.field public static final KEY_NICKNAME:Ljava/lang/String; = "nickname"

.field public static final KEY_NICKNAME_UPDATE_TIME:Ljava/lang/String; = "nickname_update_time"

.field public static final KEY_PUSH_CHANNEL:Ljava/lang/String; = "push_channel"

.field public static final KEY_PUSH_ID:Ljava/lang/String; = "push_id"

.field public static final KEY_QQ_UID:Ljava/lang/String; = "qq_uid"

.field public static final KEY_REGISTER_DEVICE_ID:Ljava/lang/String; = "register_device_id"

.field public static final KEY_REGISTER_PLATFORM:Ljava/lang/String; = "register_platform"

.field public static final KEY_REGISTER_TIME:Ljava/lang/String; = "register_time"

.field public static final KEY_SID:Ljava/lang/String; = "sid"

.field public static final KEY_UID:Ljava/lang/String; = "uid"

.field public static final KEY_WECHAT_UID:Ljava/lang/String; = "wechat_uid"

.field public static final LOGIN_TYPE_QQ:I = 0x2

.field public static final LOGIN_TYPE_VISITOR:I = 0x1

.field public static final LOGIN_TYPE_WX:I = 0x3


# instance fields
.field public age:I

.field public avatar:Ljava/lang/String;

.field public coin:I

.field public gender:I

.field public login_type:I

.field public nickname:Ljava/lang/String;

.field public nickname_update_time:J

.field public push_channel:I

.field public push_id:Ljava/lang/String;

.field public qq_uid:Ljava/lang/String;

.field public register_device_id:Ljava/lang/String;

.field public register_platform:I

.field public register_time:J

.field public sid:Ljava/lang/String;

.field public uid:Ljava/lang/String;

.field public wechat_uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/wepie/snake/module/login/UserInfo;->uid:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/wepie/snake/module/login/UserInfo;->nickname:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/wepie/snake/module/login/UserInfo;->avatar:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/wepie/snake/module/login/UserInfo;->register_device_id:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/wepie/snake/module/login/UserInfo;->qq_uid:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/wepie/snake/module/login/UserInfo;->wechat_uid:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/wepie/snake/module/login/UserInfo;->push_id:Ljava/lang/String;

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lcom/wepie/snake/module/login/UserInfo;->login_type:I

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/wepie/snake/module/login/UserInfo;->sid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isFemale()Z
    .locals 2

    .prologue
    .line 54
    iget v0, p0, Lcom/wepie/snake/module/login/UserInfo;->gender:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMale()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 50
    iget v1, p0, Lcom/wepie/snake/module/login/UserInfo;->gender:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
