.class Lcom/wepie/snake/ui/DialogView$2;
.super Ljava/lang/Object;
.source "DialogView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/ui/DialogView;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/ui/DialogView;


# direct methods
.method constructor <init>(Lcom/wepie/snake/ui/DialogView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/ui/DialogView;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/wepie/snake/ui/DialogView$2;->this$0:Lcom/wepie/snake/ui/DialogView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/wepie/snake/ui/DialogView$2;->this$0:Lcom/wepie/snake/ui/DialogView;

    iget-object v1, p0, Lcom/wepie/snake/ui/DialogView$2;->this$0:Lcom/wepie/snake/ui/DialogView;

    # getter for: Lcom/wepie/snake/ui/DialogView;->addView:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/wepie/snake/ui/DialogView;->access$100(Lcom/wepie/snake/ui/DialogView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    # setter for: Lcom/wepie/snake/ui/DialogView;->viewW:I
    invoke-static {v0, v1}, Lcom/wepie/snake/ui/DialogView;->access$002(Lcom/wepie/snake/ui/DialogView;I)I

    .line 81
    iget-object v0, p0, Lcom/wepie/snake/ui/DialogView$2;->this$0:Lcom/wepie/snake/ui/DialogView;

    iget-object v1, p0, Lcom/wepie/snake/ui/DialogView$2;->this$0:Lcom/wepie/snake/ui/DialogView;

    # getter for: Lcom/wepie/snake/ui/DialogView;->addView:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/wepie/snake/ui/DialogView;->access$100(Lcom/wepie/snake/ui/DialogView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    # setter for: Lcom/wepie/snake/ui/DialogView;->viewH:I
    invoke-static {v0, v1}, Lcom/wepie/snake/ui/DialogView;->access$202(Lcom/wepie/snake/ui/DialogView;I)I

    .line 82
    iget-object v0, p0, Lcom/wepie/snake/ui/DialogView$2;->this$0:Lcom/wepie/snake/ui/DialogView;

    iget-object v1, p0, Lcom/wepie/snake/ui/DialogView$2;->this$0:Lcom/wepie/snake/ui/DialogView;

    # getter for: Lcom/wepie/snake/ui/DialogView;->addView:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/wepie/snake/ui/DialogView;->access$100(Lcom/wepie/snake/ui/DialogView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getX()F

    move-result v1

    float-to-int v1, v1

    # setter for: Lcom/wepie/snake/ui/DialogView;->endX:I
    invoke-static {v0, v1}, Lcom/wepie/snake/ui/DialogView;->access$302(Lcom/wepie/snake/ui/DialogView;I)I

    .line 83
    iget-object v0, p0, Lcom/wepie/snake/ui/DialogView$2;->this$0:Lcom/wepie/snake/ui/DialogView;

    iget-object v1, p0, Lcom/wepie/snake/ui/DialogView$2;->this$0:Lcom/wepie/snake/ui/DialogView;

    # getter for: Lcom/wepie/snake/ui/DialogView;->addView:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/wepie/snake/ui/DialogView;->access$100(Lcom/wepie/snake/ui/DialogView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getY()F

    move-result v1

    float-to-int v1, v1

    # setter for: Lcom/wepie/snake/ui/DialogView;->endY:I
    invoke-static {v0, v1}, Lcom/wepie/snake/ui/DialogView;->access$402(Lcom/wepie/snake/ui/DialogView;I)I

    .line 84
    iget-object v0, p0, Lcom/wepie/snake/ui/DialogView$2;->this$0:Lcom/wepie/snake/ui/DialogView;

    # invokes: Lcom/wepie/snake/ui/DialogView;->initAnim()V
    invoke-static {v0}, Lcom/wepie/snake/ui/DialogView;->access$500(Lcom/wepie/snake/ui/DialogView;)V

    .line 85
    return-void
.end method
