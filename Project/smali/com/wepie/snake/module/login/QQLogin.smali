.class public Lcom/wepie/snake/module/login/QQLogin;
.super Ljava/lang/Object;
.source "QQLogin.java"

# interfaces
.implements Lcom/tencent/tauth/IUiListener;


# static fields
.field public static final APP_ID:Ljava/lang/String; = "1105424927"

.field private static final TAG:Ljava/lang/String;

.field private static mQQAuth:Lcom/tencent/connect/auth/QQAuth;


# instance fields
.field private loadingDialog:Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;

.field private loginActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mTencent:Lcom/tencent/tauth/Tencent;

.field private mUserLoginCallback:Lcom/wepie/snake/module/login/UserLoginCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/wepie/snake/module/login/QQLogin;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wepie/snake/module/login/QQLogin;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/wepie/snake/module/login/QQLogin;->loginActivity:Landroid/app/Activity;

    .line 33
    iput-object p1, p0, Lcom/wepie/snake/module/login/QQLogin;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/wepie/snake/module/login/QQLogin;)Lcom/wepie/snake/module/login/UserLoginCallback;
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/module/login/QQLogin;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/wepie/snake/module/login/QQLogin;->mUserLoginCallback:Lcom/wepie/snake/module/login/UserLoginCallback;

    return-object v0
.end method

.method public static logout(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    sget-object v0, Lcom/wepie/snake/module/login/QQLogin;->mQQAuth:Lcom/tencent/connect/auth/QQAuth;

    if-eqz v0, :cond_0

    .line 38
    sget-object v0, Lcom/wepie/snake/module/login/QQLogin;->mQQAuth:Lcom/tencent/connect/auth/QQAuth;

    invoke-virtual {v0, p0}, Lcom/tencent/connect/auth/QQAuth;->logout(Landroid/content/Context;)V

    .line 40
    :cond_0
    return-void
.end method

.method private onTencentLoginComplete(Ljava/lang/Object;)V
    .locals 5
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 59
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 60
    .local v2, "json":Lorg/json/JSONObject;
    const-string v4, "openid"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, "openid":Ljava/lang/String;
    const-string v4, "access_token"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "access_token":Ljava/lang/String;
    new-instance v4, Lcom/wepie/snake/module/login/QQLogin$1;

    invoke-direct {v4, p0}, Lcom/wepie/snake/module/login/QQLogin$1;-><init>(Lcom/wepie/snake/module/login/QQLogin;)V

    invoke-static {v0, v3, v4}, Lcom/wepie/snake/module/net/api/LoginApi;->qqLoginWithToken(Ljava/lang/String;Ljava/lang/String;Lcom/wepie/snake/module/login/UserLoginCallback;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .end local v0    # "access_token":Ljava/lang/String;
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "openid":Ljava/lang/String;
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v1

    .line 74
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public login(Lcom/wepie/snake/module/login/UserLoginCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/wepie/snake/module/login/UserLoginCallback;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/wepie/snake/module/login/QQLogin;->mUserLoginCallback:Lcom/wepie/snake/module/login/UserLoginCallback;

    .line 44
    const-string v0, "1105424927"

    iget-object v1, p0, Lcom/wepie/snake/module/login/QQLogin;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/connect/auth/QQAuth;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/connect/auth/QQAuth;

    move-result-object v0

    sput-object v0, Lcom/wepie/snake/module/login/QQLogin;->mQQAuth:Lcom/tencent/connect/auth/QQAuth;

    .line 45
    const-string v0, "1105424927"

    iget-object v1, p0, Lcom/wepie/snake/module/login/QQLogin;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/tencent/tauth/Tencent;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;

    move-result-object v0

    iput-object v0, p0, Lcom/wepie/snake/module/login/QQLogin;->mTencent:Lcom/tencent/tauth/Tencent;

    .line 47
    sget-object v0, Lcom/wepie/snake/module/login/QQLogin;->mQQAuth:Lcom/tencent/connect/auth/QQAuth;

    invoke-virtual {v0}, Lcom/tencent/connect/auth/QQAuth;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    sget-object v0, Lcom/wepie/snake/module/login/QQLogin;->mQQAuth:Lcom/tencent/connect/auth/QQAuth;

    iget-object v1, p0, Lcom/wepie/snake/module/login/QQLogin;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/connect/auth/QQAuth;->logout(Landroid/content/Context;)V

    .line 51
    :cond_0
    new-instance v0, Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;

    invoke-direct {v0}, Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;-><init>()V

    iput-object v0, p0, Lcom/wepie/snake/module/login/QQLogin;->loadingDialog:Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;

    .line 52
    iget-object v0, p0, Lcom/wepie/snake/module/login/QQLogin;->loadingDialog:Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;

    iget-object v1, p0, Lcom/wepie/snake/module/login/QQLogin;->mContext:Landroid/content/Context;

    const-string v2, "\u6b63\u5728\u8fdb\u884c\u6388\u6743"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;->showLoading(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 54
    iget-object v0, p0, Lcom/wepie/snake/module/login/QQLogin;->mTencent:Lcom/tencent/tauth/Tencent;

    iget-object v1, p0, Lcom/wepie/snake/module/login/QQLogin;->loginActivity:Landroid/app/Activity;

    const-string v2, "all"

    invoke-virtual {v0, v1, v2, p0}, Lcom/tencent/tauth/Tencent;->login(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I

    .line 55
    return-void
.end method

.method public onCancel()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/wepie/snake/module/login/QQLogin;->loadingDialog:Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wepie/snake/module/login/QQLogin;->loadingDialog:Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;

    invoke-virtual {v0}, Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;->hideLoading()V

    .line 91
    :cond_0
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/wepie/snake/module/login/QQLogin;->loadingDialog:Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wepie/snake/module/login/QQLogin;->loadingDialog:Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;

    invoke-virtual {v0}, Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;->hideLoading()V

    .line 81
    :cond_0
    invoke-direct {p0, p1}, Lcom/wepie/snake/module/login/QQLogin;->onTencentLoginComplete(Ljava/lang/Object;)V

    .line 82
    return-void
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .locals 1
    .param p1, "arg0"    # Lcom/tencent/tauth/UiError;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/wepie/snake/module/login/QQLogin;->loadingDialog:Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wepie/snake/module/login/QQLogin;->loadingDialog:Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;

    invoke-virtual {v0}, Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;->hideLoading()V

    .line 86
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wepie/snake/module/game/util/ToastUtil;->show(Ljava/lang/String;)V

    .line 87
    return-void
.end method
