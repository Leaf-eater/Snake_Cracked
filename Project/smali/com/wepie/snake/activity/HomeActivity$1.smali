.class Lcom/wepie/snake/activity/HomeActivity$1;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/wepie/snake/helper/clip/ImageChooser$ImageChooserCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/activity/HomeActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/activity/HomeActivity;


# direct methods
.method constructor <init>(Lcom/wepie/snake/activity/HomeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/activity/HomeActivity;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/wepie/snake/activity/HomeActivity$1;->this$0:Lcom/wepie/snake/activity/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageUploaded(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 86
    const-string v0, "999"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----->onImageUploaded url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lcom/wepie/snake/activity/HomeActivity$1;->this$0:Lcom/wepie/snake/activity/HomeActivity;

    # getter for: Lcom/wepie/snake/activity/HomeActivity;->avatarModifyView:Lcom/wepie/snake/module/home/AvatarModifyView;
    invoke-static {v0}, Lcom/wepie/snake/activity/HomeActivity;->access$000(Lcom/wepie/snake/activity/HomeActivity;)Lcom/wepie/snake/module/home/AvatarModifyView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wepie/snake/activity/HomeActivity$1;->this$0:Lcom/wepie/snake/activity/HomeActivity;

    # getter for: Lcom/wepie/snake/activity/HomeActivity;->avatarModifyView:Lcom/wepie/snake/module/home/AvatarModifyView;
    invoke-static {v0}, Lcom/wepie/snake/activity/HomeActivity;->access$000(Lcom/wepie/snake/activity/HomeActivity;)Lcom/wepie/snake/module/home/AvatarModifyView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/wepie/snake/module/home/AvatarModifyView;->onAvatarUploaded(Ljava/lang/String;)V

    .line 88
    :cond_0
    return-void
.end method
