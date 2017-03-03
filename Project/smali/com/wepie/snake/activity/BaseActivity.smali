.class public Lcom/wepie/snake/activity/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    invoke-static {}, Lcom/wepie/snake/base/ActivityTaskManager;->getInstance()Lcom/wepie/snake/base/ActivityTaskManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/wepie/snake/base/ActivityTaskManager;->pushActivity(Landroid/app/Activity;)V

    .line 18
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 44
    invoke-static {}, Lcom/wepie/snake/base/ActivityTaskManager;->getInstance()Lcom/wepie/snake/base/ActivityTaskManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/wepie/snake/base/ActivityTaskManager;->popActivity(Landroid/app/Activity;)V

    .line 45
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 33
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 34
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 28
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 22
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 23
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 38
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 39
    return-void
.end method
