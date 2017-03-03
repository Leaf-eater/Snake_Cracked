.class Lcom/wepie/snake/module/home/user/LoginInfoView$6;
.super Ljava/lang/Object;
.source "LoginInfoView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wepie/snake/module/home/user/LoginInfoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/module/home/user/LoginInfoView;


# direct methods
.method constructor <init>(Lcom/wepie/snake/module/home/user/LoginInfoView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/module/home/user/LoginInfoView;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/wepie/snake/module/home/user/LoginInfoView$6;->this$0:Lcom/wepie/snake/module/home/user/LoginInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v3, 0x7f020132

    const v2, 0x7f02005e

    const/4 v12, 0x1

    const/4 v1, 0x0

    .line 188
    iget-object v0, p0, Lcom/wepie/snake/module/home/user/LoginInfoView$6;->this$0:Lcom/wepie/snake/module/home/user/LoginInfoView;

    # getter for: Lcom/wepie/snake/module/home/user/LoginInfoView;->headIconView:Lcom/wepie/snake/module/home/HeadIconView;
    invoke-static {v0}, Lcom/wepie/snake/module/home/user/LoginInfoView;->access$300(Lcom/wepie/snake/module/home/user/LoginInfoView;)Lcom/wepie/snake/module/home/HeadIconView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/wepie/snake/module/home/user/LoginInfoView$6;->this$0:Lcom/wepie/snake/module/home/user/LoginInfoView;

    # getter for: Lcom/wepie/snake/module/home/user/LoginInfoView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/wepie/snake/module/home/user/LoginInfoView;->access$400(Lcom/wepie/snake/module/home/user/LoginInfoView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/wepie/snake/activity/HomeActivity;

    invoke-virtual {v0}, Lcom/wepie/snake/activity/HomeActivity;->showAvatarModifyDialog()V

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/wepie/snake/module/home/user/LoginInfoView$6;->this$0:Lcom/wepie/snake/module/home/user/LoginInfoView;

    # getter for: Lcom/wepie/snake/module/home/user/LoginInfoView;->maleBt:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/wepie/snake/module/home/user/LoginInfoView;->access$500(Lcom/wepie/snake/module/home/user/LoginInfoView;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 191
    iget-object v0, p0, Lcom/wepie/snake/module/home/user/LoginInfoView$6;->this$0:Lcom/wepie/snake/module/home/user/LoginInfoView;

    # getter for: Lcom/wepie/snake/module/home/user/LoginInfoView;->maleBt:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/wepie/snake/module/home/user/LoginInfoView;->access$500(Lcom/wepie/snake/module/home/user/LoginInfoView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 192
    iget-object v0, p0, Lcom/wepie/snake/module/home/user/LoginInfoView$6;->this$0:Lcom/wepie/snake/module/home/user/LoginInfoView;

    # getter for: Lcom/wepie/snake/module/home/user/LoginInfoView;->femaleBt:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/wepie/snake/module/home/user/LoginInfoView;->access$600(Lcom/wepie/snake/module/home/user/LoginInfoView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 193
    invoke-static {}, Lcom/wepie/snake/module/login/LoginHelper;->getLoginUser()Lcom/wepie/snake/module/login/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wepie/snake/module/login/UserInfo;->isMale()Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/wepie/snake/module/home/user/LoginInfoView$6;->this$0:Lcom/wepie/snake/module/home/user/LoginInfoView;

    # invokes: Lcom/wepie/snake/module/home/user/LoginInfoView;->doUpdateGender(I)V
    invoke-static {v0, v12}, Lcom/wepie/snake/module/home/user/LoginInfoView;->access$700(Lcom/wepie/snake/module/home/user/LoginInfoView;I)V

    goto :goto_0

    .line 196
    :cond_2
    iget-object v0, p0, Lcom/wepie/snake/module/home/user/LoginInfoView$6;->this$0:Lcom/wepie/snake/module/home/user/LoginInfoView;

    # getter for: Lcom/wepie/snake/module/home/user/LoginInfoView;->femaleBt:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/wepie/snake/module/home/user/LoginInfoView;->access$600(Lcom/wepie/snake/module/home/user/LoginInfoView;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 197
    iget-object v0, p0, Lcom/wepie/snake/module/home/user/LoginInfoView$6;->this$0:Lcom/wepie/snake/module/home/user/LoginInfoView;

    # getter for: Lcom/wepie/snake/module/home/user/LoginInfoView;->maleBt:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/wepie/snake/module/home/user/LoginInfoView;->access$500(Lcom/wepie/snake/module/home/user/LoginInfoView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 198
    iget-object v0, p0, Lcom/wepie/snake/module/home/user/LoginInfoView$6;->this$0:Lcom/wepie/snake/module/home/user/LoginInfoView;

    # getter for: Lcom/wepie/snake/module/home/user/LoginInfoView;->femaleBt:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/wepie/snake/module/home/user/LoginInfoView;->access$600(Lcom/wepie/snake/module/home/user/LoginInfoView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 199
    invoke-static {}, Lcom/wepie/snake/module/login/LoginHelper;->getLoginUser()Lcom/wepie/snake/module/login/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wepie/snake/module/login/UserInfo;->isFemale()Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/wepie/snake/module/home/user/LoginInfoView$6;->this$0:Lcom/wepie/snake/module/home/user/LoginInfoView;

    const/4 v1, 0x2

    # invokes: Lcom/wepie/snake/module/home/user/LoginInfoView;->doUpdateGender(I)V
    invoke-static {v0, v1}, Lcom/wepie/snake/module/home/user/LoginInfoView;->access$700(Lcom/wepie/snake/module/home/user/LoginInfoView;I)V

    goto :goto_0

    .line 202
    :cond_3
    iget-object v0, p0, Lcom/wepie/snake/module/home/user/LoginInfoView$6;->this$0:Lcom/wepie/snake/module/home/user/LoginInfoView;

    # getter for: Lcom/wepie/snake/module/home/user/LoginInfoView;->nickModifyBt:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/wepie/snake/module/home/user/LoginInfoView;->access$800(Lcom/wepie/snake/module/home/user/LoginInfoView;)Landroid/widget/TextView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 204
    invoke-static {}, Lcom/wepie/snake/module/login/LoginHelper;->getLoginUser()Lcom/wepie/snake/module/login/UserInfo;

    move-result-object v0

    iget-wide v10, v0, Lcom/wepie/snake/module/login/UserInfo;->nickname_update_time:J

    .line 205
    .local v10, "lastModifyTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    sub-long v8, v2, v10

    .line 206
    .local v8, "dt":J
    const-wide/32 v2, 0x15180

    div-long v6, v8, v2

    .line 207
    .local v6, "day":J
    const-wide/16 v2, 0x1e

    sub-long v6, v2, v6

    .line 209
    const-wide/16 v2, 0x0

    cmp-long v0, v6, v2

    if-lez v0, :cond_4

    const-wide/16 v2, 0x1f

    cmp-long v0, v6, v2

    if-gez v0, :cond_4

    .line 210
    iget-object v0, p0, Lcom/wepie/snake/module/home/user/LoginInfoView$6;->this$0:Lcom/wepie/snake/module/home/user/LoginInfoView;

    # getter for: Lcom/wepie/snake/module/home/user/LoginInfoView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/wepie/snake/module/home/user/LoginInfoView;->access$400(Lcom/wepie/snake/module/home/user/LoginInfoView;)Landroid/content/Context;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8fd8\u9700"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u5929\u624d\u80fd\u4fee\u6539"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u597d\u7684"

    move-object v2, v1

    move-object v5, v1

    invoke-static/range {v0 .. v5}, Lcom/wepie/snake/helper/dialog/DialogUtil;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/wepie/snake/helper/dialog/DialogCallback;)V

    goto/16 :goto_0

    .line 212
    :cond_4
    iget-object v0, p0, Lcom/wepie/snake/module/home/user/LoginInfoView$6;->this$0:Lcom/wepie/snake/module/home/user/LoginInfoView;

    # getter for: Lcom/wepie/snake/module/home/user/LoginInfoView;->nickEditTx:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/wepie/snake/module/home/user/LoginInfoView;->access$000(Lcom/wepie/snake/module/home/user/LoginInfoView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 213
    iget-object v0, p0, Lcom/wepie/snake/module/home/user/LoginInfoView$6;->this$0:Lcom/wepie/snake/module/home/user/LoginInfoView;

    # getter for: Lcom/wepie/snake/module/home/user/LoginInfoView;->nickEditTx:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/wepie/snake/module/home/user/LoginInfoView;->access$000(Lcom/wepie/snake/module/home/user/LoginInfoView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 214
    iget-object v0, p0, Lcom/wepie/snake/module/home/user/LoginInfoView$6;->this$0:Lcom/wepie/snake/module/home/user/LoginInfoView;

    # getter for: Lcom/wepie/snake/module/home/user/LoginInfoView;->nickEditTx:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/wepie/snake/module/home/user/LoginInfoView;->access$000(Lcom/wepie/snake/module/home/user/LoginInfoView;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/wepie/snake/module/home/user/LoginInfoView$6;->this$0:Lcom/wepie/snake/module/home/user/LoginInfoView;

    # getter for: Lcom/wepie/snake/module/home/user/LoginInfoView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/wepie/snake/module/home/user/LoginInfoView;->access$400(Lcom/wepie/snake/module/home/user/LoginInfoView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wepie/snake/helper/softInput/IMMHelper;->showSoftInput(Landroid/widget/EditText;Landroid/content/Context;)V

    goto/16 :goto_0
.end method
