.class Lcom/wepie/snake/activity/GameActivity$1;
.super Ljava/lang/Object;
.source "GameActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/activity/GameActivity;->setEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/activity/GameActivity;


# direct methods
.method constructor <init>(Lcom/wepie/snake/activity/GameActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/activity/GameActivity;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/wepie/snake/activity/GameActivity$1;->this$0:Lcom/wepie/snake/activity/GameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 104
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 113
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 106
    :pswitch_1
    iget-object v0, p0, Lcom/wepie/snake/activity/GameActivity$1;->this$0:Lcom/wepie/snake/activity/GameActivity;

    iget-object v0, v0, Lcom/wepie/snake/activity/GameActivity;->surfaceView:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    invoke-virtual {v0}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->speedUp()V

    goto :goto_0

    .line 110
    :pswitch_2
    iget-object v0, p0, Lcom/wepie/snake/activity/GameActivity$1;->this$0:Lcom/wepie/snake/activity/GameActivity;

    iget-object v0, v0, Lcom/wepie/snake/activity/GameActivity;->surfaceView:Lcom/wepie/snake/module/game/SnakeSurfaceView;

    invoke-virtual {v0}, Lcom/wepie/snake/module/game/SnakeSurfaceView;->speedDown()V

    goto :goto_0

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
