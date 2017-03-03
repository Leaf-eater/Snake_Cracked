.class Lcom/wepie/snake/activity/StartActivity$3;
.super Ljava/lang/Object;
.source "StartActivity.java"

# interfaces
.implements Lcom/wepie/snake/module/home/LoadingView$LoadingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/activity/StartActivity;->showLoading()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/activity/StartActivity;


# direct methods
.method constructor <init>(Lcom/wepie/snake/activity/StartActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/activity/StartActivity;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/wepie/snake/activity/StartActivity$3;->this$0:Lcom/wepie/snake/activity/StartActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoaded()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/wepie/snake/activity/StartActivity$3;->this$0:Lcom/wepie/snake/activity/StartActivity;

    # invokes: Lcom/wepie/snake/activity/StartActivity;->doJump()V
    invoke-static {v0}, Lcom/wepie/snake/activity/StartActivity;->access$300(Lcom/wepie/snake/activity/StartActivity;)V

    .line 128
    return-void
.end method
