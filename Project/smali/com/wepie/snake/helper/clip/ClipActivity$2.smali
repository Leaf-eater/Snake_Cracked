.class Lcom/wepie/snake/helper/clip/ClipActivity$2;
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
    .line 55
    iput-object p1, p0, Lcom/wepie/snake/helper/clip/ClipActivity$2;->this$0:Lcom/wepie/snake/helper/clip/ClipActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 58
    iget-object v3, p0, Lcom/wepie/snake/helper/clip/ClipActivity$2;->this$0:Lcom/wepie/snake/helper/clip/ClipActivity;

    # getter for: Lcom/wepie/snake/helper/clip/ClipActivity;->mClipImageLayout:Lcom/wepie/snake/helper/clip/ClipImageLayout;
    invoke-static {v3}, Lcom/wepie/snake/helper/clip/ClipActivity;->access$000(Lcom/wepie/snake/helper/clip/ClipActivity;)Lcom/wepie/snake/helper/clip/ClipImageLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wepie/snake/helper/clip/ClipImageLayout;->clip()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 59
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/wepie/snake/helper/clip/ClipActivity$2;->this$0:Lcom/wepie/snake/helper/clip/ClipActivity;

    # invokes: Lcom/wepie/snake/helper/clip/ClipActivity;->compressBmpToFile(Landroid/graphics/Bitmap;)Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/wepie/snake/helper/clip/ClipActivity;->access$100(Lcom/wepie/snake/helper/clip/ClipActivity;Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, "path":Ljava/lang/String;
    invoke-static {}, Lcom/wepie/snake/helper/pref/GamePrefUtil;->getInstance()Lcom/wepie/snake/helper/pref/GamePrefUtil;

    move-result-object v3

    const-string v4, "temp_clip_image"

    invoke-virtual {v3, v4, v2}, Lcom/wepie/snake/helper/pref/GamePrefUtil;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 63
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "clip_path"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    iget-object v3, p0, Lcom/wepie/snake/helper/clip/ClipActivity$2;->this$0:Lcom/wepie/snake/helper/clip/ClipActivity;

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v1}, Lcom/wepie/snake/helper/clip/ClipActivity;->setResult(ILandroid/content/Intent;)V

    .line 65
    iget-object v3, p0, Lcom/wepie/snake/helper/clip/ClipActivity$2;->this$0:Lcom/wepie/snake/helper/clip/ClipActivity;

    invoke-virtual {v3}, Lcom/wepie/snake/helper/clip/ClipActivity;->finish()V

    .line 66
    return-void
.end method
