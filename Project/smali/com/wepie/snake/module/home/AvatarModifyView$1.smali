.class Lcom/wepie/snake/module/home/AvatarModifyView$1;
.super Ljava/lang/Object;
.source "AvatarModifyView.java"

# interfaces
.implements Lcom/wepie/snake/module/net/handler/UpdateUserInfoHandler$UpdateUserInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/module/home/AvatarModifyView;->updateHeadImageUrl(Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/module/home/AvatarModifyView;

.field final synthetic val$isLocalImage:Z

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/wepie/snake/module/home/AvatarModifyView;ZLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/module/home/AvatarModifyView;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/wepie/snake/module/home/AvatarModifyView$1;->this$0:Lcom/wepie/snake/module/home/AvatarModifyView;

    iput-boolean p2, p0, Lcom/wepie/snake/module/home/AvatarModifyView$1;->val$isLocalImage:Z

    iput-object p3, p0, Lcom/wepie/snake/module/home/AvatarModifyView$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/wepie/snake/module/home/AvatarModifyView$1;->this$0:Lcom/wepie/snake/module/home/AvatarModifyView;

    iget-object v0, v0, Lcom/wepie/snake/module/home/AvatarModifyView;->dialog:Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;

    invoke-virtual {v0}, Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;->hideLoading()V

    .line 136
    invoke-static {p1}, Lcom/wepie/snake/module/game/util/ToastUtil;->show(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/wepie/snake/module/home/AvatarModifyView$1;->this$0:Lcom/wepie/snake/module/home/AvatarModifyView;

    # invokes: Lcom/wepie/snake/module/home/AvatarModifyView;->refreshLocalAvatar()V
    invoke-static {v0}, Lcom/wepie/snake/module/home/AvatarModifyView;->access$000(Lcom/wepie/snake/module/home/AvatarModifyView;)V

    .line 138
    iget-object v0, p0, Lcom/wepie/snake/module/home/AvatarModifyView$1;->this$0:Lcom/wepie/snake/module/home/AvatarModifyView;

    # getter for: Lcom/wepie/snake/module/home/AvatarModifyView;->recyclerSystemAdapter:Lcom/wepie/snake/module/home/AvatarModifyView$RecyclerSystemAdapter;
    invoke-static {v0}, Lcom/wepie/snake/module/home/AvatarModifyView;->access$100(Lcom/wepie/snake/module/home/AvatarModifyView;)Lcom/wepie/snake/module/home/AvatarModifyView$RecyclerSystemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wepie/snake/module/home/AvatarModifyView$RecyclerSystemAdapter;->notifyDataSetChanged()V

    .line 139
    return-void
.end method

.method public onSuccess()V
    .locals 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/wepie/snake/module/home/AvatarModifyView$1;->this$0:Lcom/wepie/snake/module/home/AvatarModifyView;

    iget-object v0, v0, Lcom/wepie/snake/module/home/AvatarModifyView;->dialog:Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;

    invoke-virtual {v0}, Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;->hideLoading()V

    .line 124
    iget-boolean v0, p0, Lcom/wepie/snake/module/home/AvatarModifyView$1;->val$isLocalImage:Z

    if-eqz v0, :cond_0

    .line 125
    invoke-static {}, Lcom/wepie/snake/helper/pref/UserPrefUtil;->getInstance()Lcom/wepie/snake/helper/pref/UserPrefUtil;

    move-result-object v0

    const-string v1, "local_avatar_url"

    iget-object v2, p0, Lcom/wepie/snake/module/home/AvatarModifyView$1;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/wepie/snake/helper/pref/UserPrefUtil;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/wepie/snake/module/home/AvatarModifyView$1;->val$url:Ljava/lang/String;

    invoke-static {v0}, Lcom/wepie/snake/module/login/LoginHelper;->updateAvatar(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/wepie/snake/module/home/AvatarModifyView$1;->this$0:Lcom/wepie/snake/module/home/AvatarModifyView;

    # invokes: Lcom/wepie/snake/module/home/AvatarModifyView;->refreshLocalAvatar()V
    invoke-static {v0}, Lcom/wepie/snake/module/home/AvatarModifyView;->access$000(Lcom/wepie/snake/module/home/AvatarModifyView;)V

    .line 129
    iget-object v0, p0, Lcom/wepie/snake/module/home/AvatarModifyView$1;->this$0:Lcom/wepie/snake/module/home/AvatarModifyView;

    # getter for: Lcom/wepie/snake/module/home/AvatarModifyView;->recyclerSystemAdapter:Lcom/wepie/snake/module/home/AvatarModifyView$RecyclerSystemAdapter;
    invoke-static {v0}, Lcom/wepie/snake/module/home/AvatarModifyView;->access$100(Lcom/wepie/snake/module/home/AvatarModifyView;)Lcom/wepie/snake/module/home/AvatarModifyView$RecyclerSystemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wepie/snake/module/home/AvatarModifyView$RecyclerSystemAdapter;->notifyDataSetChanged()V

    .line 130
    iget-object v0, p0, Lcom/wepie/snake/module/home/AvatarModifyView$1;->this$0:Lcom/wepie/snake/module/home/AvatarModifyView;

    # getter for: Lcom/wepie/snake/module/home/AvatarModifyView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/wepie/snake/module/home/AvatarModifyView;->access$200(Lcom/wepie/snake/module/home/AvatarModifyView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/wepie/snake/activity/HomeActivity;

    invoke-virtual {v0}, Lcom/wepie/snake/activity/HomeActivity;->refreshUserInfo()V

    .line 131
    return-void
.end method
