.class Lcom/wepie/snake/helper/clip/ClipActivity$1;
.super Ljava/lang/Object;
.source "ClipActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/helper/clip/ClipActivity;->initTitle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/helper/clip/ClipActivity;


# direct methods
.method constructor <init>(Lcom/wepie/snake/helper/clip/ClipActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/helper/clip/ClipActivity;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/wepie/snake/helper/clip/ClipActivity$1;->this$0:Lcom/wepie/snake/helper/clip/ClipActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/wepie/snake/helper/clip/ClipActivity$1;->this$0:Lcom/wepie/snake/helper/clip/ClipActivity;

    invoke-virtual {v0}, Lcom/wepie/snake/helper/clip/ClipActivity;->finish()V

    .line 52
    return-void
.end method
