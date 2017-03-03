.class Lcom/wepie/snake/module/home/skin/SkinView$1;
.super Ljava/lang/Object;
.source "SkinView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/module/home/skin/SkinView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/module/home/skin/SkinView;


# direct methods
.method constructor <init>(Lcom/wepie/snake/module/home/skin/SkinView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/module/home/skin/SkinView;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/wepie/snake/module/home/skin/SkinView$1;->this$0:Lcom/wepie/snake/module/home/skin/SkinView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/wepie/snake/module/home/skin/SkinView$1;->this$0:Lcom/wepie/snake/module/home/skin/SkinView;

    # getter for: Lcom/wepie/snake/module/home/skin/SkinView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/wepie/snake/module/home/skin/SkinView;->access$000(Lcom/wepie/snake/module/home/skin/SkinView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/wepie/snake/activity/HomeActivity;

    invoke-virtual {v0}, Lcom/wepie/snake/activity/HomeActivity;->showHomeView()V

    .line 67
    return-void
.end method
