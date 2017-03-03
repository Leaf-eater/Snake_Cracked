.class Lcom/wepie/snake/ui/DialogView$1;
.super Ljava/lang/Object;
.source "DialogView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/ui/DialogView;->init()V
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
    .line 49
    iput-object p1, p0, Lcom/wepie/snake/ui/DialogView$1;->this$0:Lcom/wepie/snake/ui/DialogView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 52
    invoke-static {}, Lcom/wepie/snake/helper/dialog/DialogUtil;->hideView()V

    .line 53
    return-void
.end method
