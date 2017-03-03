.class public Lcom/wepie/snake/module/game/util/ToastUtil;
.super Ljava/lang/Object;
.source "ToastUtil.java"


# static fields
.field private static sHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/wepie/snake/module/game/util/ToastUtil;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static show(I)V
    .locals 1
    .param p0, "resourceId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 29
    invoke-static {}, Lcom/wepie/snake/base/SkApplication;->getInstance()Lcom/wepie/snake/base/SkApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/wepie/snake/base/SkApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wepie/snake/module/game/util/ToastUtil;->show(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public static varargs show(I[Ljava/lang/Object;)V
    .locals 1
    .param p0, "resourceId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 37
    invoke-static {}, Lcom/wepie/snake/base/SkApplication;->getInstance()Lcom/wepie/snake/base/SkApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/wepie/snake/base/SkApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/wepie/snake/module/game/util/ToastUtil;->show(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    return-void
.end method

.method public static show(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 19
    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p0, :cond_1

    .line 26
    :cond_0
    :goto_0
    return-void

    .line 20
    :cond_1
    sget-object v0, Lcom/wepie/snake/module/game/util/ToastUtil;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/wepie/snake/module/game/util/ToastUtil$1;

    invoke-direct {v1, p0}, Lcom/wepie/snake/module/game/util/ToastUtil$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static varargs show(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 33
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wepie/snake/module/game/util/ToastUtil;->show(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public static varargs showError(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "errorCode"    # I
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wepie/snake/module/game/util/ToastUtil;->show(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static showInCenter(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 48
    sget-object v0, Lcom/wepie/snake/module/game/util/ToastUtil;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/wepie/snake/module/game/util/ToastUtil$2;

    invoke-direct {v1, p0}, Lcom/wepie/snake/module/game/util/ToastUtil$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 56
    return-void
.end method
