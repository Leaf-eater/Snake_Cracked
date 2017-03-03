.class Lcom/wepie/snake/activity/StartActivity$4;
.super Ljava/lang/Object;
.source "StartActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/activity/StartActivity;->doJump()V
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
    .line 152
    iput-object p1, p0, Lcom/wepie/snake/activity/StartActivity$4;->this$0:Lcom/wepie/snake/activity/StartActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/wepie/snake/activity/StartActivity$4;->this$0:Lcom/wepie/snake/activity/StartActivity;

    invoke-virtual {v0}, Lcom/wepie/snake/activity/StartActivity;->finish()V

    .line 156
    return-void
.end method
