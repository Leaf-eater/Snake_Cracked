.class public Lcom/wepie/snake/module/home/user/LoginInfoView;
.super Landroid/widget/LinearLayout;
.source "LoginInfoView.java"


# instance fields
.field private ageEditTx:Landroid/widget/EditText;

.field private femaleBt:Landroid/widget/ImageView;

.field private headIconView:Lcom/wepie/snake/module/home/HeadIconView;

.field private listener:Landroid/view/View$OnClickListener;

.field private loginTypeTx:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private maleBt:Landroid/widget/ImageView;

.field private nickEditTx:Landroid/widget/EditText;

.field private nickModifyBt:Landroid/widget/TextView;

.field private nickTx:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 185
    new-instance v0, Lcom/wepie/snake/module/home/user/LoginInfoView$6;

    invoke-direct {v0, p0}, Lcom/wepie/snake/module/home/user/LoginInfoView$6;-><init>(Lcom/wepie/snake/module/home/user/LoginInfoView;)V

    iput-object v0, p0, Lcom/wepie/snake/module/home/user/LoginInfoView;->listener:Landroid/view/View$OnClickListener;

    .line 46
    iput-object p1, p0, Lcom/wepie/snake/module/home/user/LoginInfoView;->mContext:Landroid/content/Context;

    .line 47
    invoke-direct {p0}, Lcom/wepie/snake/module/home/user/LoginInfoView;->init()V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 185
    new-instance v0, Lcom/wepie/snake/module/home/user/LoginInfoView$6;

    invoke-direct {v0, p0}, Lcom/wepie/snake/module/home/user/LoginInfoView$6;-><init>(Lcom/wepie/snake/module/home/user/LoginInfoView;)V

    iput-object v0, p0, Lcom/wepie/snake/module/home/user/LoginInfoView;->listener:Landroid/view/View$OnClickListener;

    .line 52
    iput-object p1, p0, Lcom/wepie/snake/module/home/user/LoginInfoView;->mContext:Landroid/content/Context;

    .line 53
    invoke-direct {p0}, Lcom/wepie/snake/module/home/user/LoginInfoView;->init()V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/wepie/snake/module/home/user/LoginInfoView;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/module/home/user/LoginInfoView;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/wepie/snake/module/home/user/LoginInfoView;->nickEditTx:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/wepie/snake/module/home/user/LoginInfoView;)V
    .locals 0
    .param p0, "x0"    # Lcom/wepie/snake/module/home/user/LoginInfoView;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/wepie/snake/module/home/user/LoginInfoView;->doUpdateNick()V

    return-void
.end method

.method static synthetic access$200(Lcom/wepie/snake/module/home/user/LoginInfoView;)V
    .locals 0
    .param p0, "x0"    # Lcom/wepie/snake/module/home/user/LoginInfoView;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/wepie/snake/module/home/user/LoginInfoView;->doUpdateAge()V

    return-void
.end method

.method static synthetic access$300(Lcom/wepie/snake/module/home/user/LoginInfoView;)Lcom/wepie/snake/module/home/HeadIconView;
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/module/home/user/LoginInfoView;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/wepie/snake/module/home/user/LoginInfoView;->headIconView:Lcom/wepie/snake/module/home/HeadIconView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/wepie/snake/module/home/user/LoginInfoView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/module/home/user/LoginInfoView;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/wepie/snake/module/home/user/LoginInfoView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/wepie/snake/module/home/user/LoginInfoView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/module/home/user/LoginInfoView;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/wepie/snake/module/home/user/LoginInfoView;->maleBt:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/wepie/snake/module/home/user/LoginInfoView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/module/home/user/LoginInfoView;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/wepie/snake/module/home/user/LoginInfoView;->femaleBt:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/wepie/snake/module/home/user/LoginInfoView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/wepie/snake/module/home/user/LoginInfoView;
    .param p1, "x1"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/wepie/snake/module/home/user/LoginInfoView;->doUpdateGender(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/wepie/snake/module/home/user/LoginInfoView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/module/home/user/LoginInfoView;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/wepie/snake/module/home/user/LoginInfoView;->nickModifyBt:Landroid/widget/TextView;

    return-object v0
.end method

.method private addEditTextWatcher()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/wepie/snake/module/home/user/LoginInfoView;->nickEditTx:Landroid/widget/EditText;

    new-instance v1, Lcom/wepie/snake/module/home/user/LoginInfoView$1;

    invoke-direct {v1, p0}, Lcom/wepie/snake/module/home/user/LoginInfoView$1;-><init>(Lcom/wepie/snake/module/home/user/LoginInfoView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 94
    iget-object v0, p0, Lcom/wepie/snake/module/home/user/LoginInfoView;->ageEditTx:Landroid/widget/EditText;

    new-instance v1, Lcom/wepie/snake/module/home/user/LoginInfoView$2;

    invoke-direct {v1, p0}, Lcom/wepie/snake/module/home/user/LoginInfoView$2;-><init>(Lcom/wepie/snake/module/home/user/LoginInfoView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 103
    return-void
.end method

.method private doUpdateAge()V
    .locals 4

    .prologue
    .line 125
    :try_start_0
    iget-object v2, p0, Lcom/wepie/snake/module/home/user/LoginInfoView;->ageEditTx:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 126
    .local v0, "age":I
    iget-object v2, p0, Lcom/wepie/snake/module/home/user/LoginInfoView;->ageEditTx:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/wepie/snake/module/home/user/LoginInfoView$4;

    invoke-direct {v3, p0, v0}, Lcom/wepie/snake/module/home/user/LoginInfoView$4;-><init>(Lcom/wepie/snake/module/home/user/LoginInfoView;I)V

    invoke-static {v2, v3}, Lcom/wepie/snake/module/net/api/UserApi;->updatAge(Ljava/lang/String;Lcom/wepie/snake/module/net/handler/UpdateUserInfoHandler$UpdateUserInfoCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .end local v0    # "age":I
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v1

    .line 141
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 142
    const-string v2, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u5e74\u9f84"

    invoke-static {v2}, Lcom/wepie/snake/module/game/util/ToastUtil;->show(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private doUpdateGender(I)V
    .locals 1
    .param p1, "gender"    # I

    .prologue
    .line 147
    new-instance v0, Lcom/wepie/snake/module/home/user/LoginInfoView$5;

    invoke-direct {v0, p0, p1}, Lcom/wepie/snake/module/home/user/LoginInfoView$5;-><init>(Lcom/wepie/snake/module/home/user/LoginInfoView;I)V

    invoke-static {p1, v0}, Lcom/wepie/snake/module/net/api/UserApi;->updatGender(ILcom/wepie/snake/module/net/handler/UpdateUserInfoHandler$UpdateUserInfoCallback;)V

    .line 159
    return-void
.end method

.method private doUpdateNick()V
    .locals 2

    .prologue
    .line 106
    iget-object v1, p0, Lcom/wepie/snake/module/home/user/LoginInfoView;->nickEditTx:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "nick":Ljava/lang/String;
    new-instance v1, Lcom/wepie/snake/module/home/user/LoginInfoView$3;

    invoke-direct {v1, p0, v0}, Lcom/wepie/snake/module/home/user/LoginInfoView$3;-><init>(Lcom/wepie/snake/module/home/user/LoginInfoView;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/wepie/snake/module/net/api/UserApi;->updateNick(Ljava/lang/String;Lcom/wepie/snake/module/net/handler/UpdateUserInfoHandler$UpdateUserInfoCallback;)V

    .line 121
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/wepie/snake/module/home/user/LoginInfoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040028

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 58
    const v0, 0x7f0d0090

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/home/user/LoginInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wepie/snake/module/home/HeadIconView;

    iput-object v0, p0, Lcom/wepie/snake/module/home/user/LoginInfoView;->headIconView:Lcom/wepie/snake/module/home/HeadIconView;

    .line 59
    const v0, 0x7f0d0091

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/home/user/LoginInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wepie/snake/module/home/user/LoginInfoView;->nickTx:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f0d0095

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/home/user/LoginInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wepie/snake/module/home/user/LoginInfoView;->nickEditTx:Landroid/widget/EditText;

    .line 61
    const v0, 0x7f0d0098

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/home/user/LoginInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wepie/snake/module/home/user/LoginInfoView;->ageEditTx:Landroid/widget/EditText;

    .line 62
    const v0, 0x7f0d0096

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/home/user/LoginInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wepie/snake/module/home/user/LoginInfoView;->nickModifyBt:Landroid/widget/TextView;

    .line 63
    const v0, 0x7f0d009a

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/home/user/LoginInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wepie/snake/module/home/user/LoginInfoView;->maleBt:Landroid/widget/ImageView;

    .line 64
    const v0, 0x7f0d009c

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/home/user/LoginInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wepie/snake/module/home/user/LoginInfoView;->femaleBt:Landroid/widget/ImageView;

    .line 65
    const v0, 0x7f0d0092

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/home/user/LoginInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wepie/snake/module/home/user/LoginInfoView;->loginTypeTx:Landroid/widget/TextView;

    .line 67
    iget-object v0, p0, Lcom/wepie/snake/module/home/user/LoginInfoView;->headIconView:Lcom/wepie/snake/module/home/HeadIconView;

    iget-object v1, p0, Lcom/wepie/snake/module/home/user/LoginInfoView;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/wepie/snake/module/home/HeadIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v0, p0, Lcom/wepie/snake/module/home/user/LoginInfoView;->nickModifyBt:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wepie/snake/module/home/user/LoginInfoView;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v0, p0, Lcom/wepie/snake/module/home/user/LoginInfoView;->maleBt:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/wepie/snake/module/home/user/LoginInfoView;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/wepie/snake/module/home/user/LoginInfoView;->femaleBt:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/wepie/snake/module/home/user/LoginInfoView;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    invoke-direct {p0}, Lcom/wepie/snake/module/home/user/LoginInfoView;->addEditTextWatcher()V

    .line 73
    return-void
.end method


# virtual methods
.method public refresh()V
    .locals 6

    .prologue
    const v5, 0x7f02005e

    const v4, 0x7f020132

    .line 162
    invoke-static {}, Lcom/wepie/snake/module/login/LoginHelper;->getLoginUser()Lcom/wepie/snake/module/login/UserInfo;

    move-result-object v0

    .line 163
    .local v0, "userInfo":Lcom/wepie/snake/module/login/UserInfo;
    iget-object v1, p0, Lcom/wepie/snake/module/home/user/LoginInfoView;->headIconView:Lcom/wepie/snake/module/home/HeadIconView;

    iget-object v2, v0, Lcom/wepie/snake/module/login/UserInfo;->avatar:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/wepie/snake/module/home/HeadIconView;->update(Ljava/lang/String;)V

    .line 164
    iget-object v1, p0, Lcom/wepie/snake/module/home/user/LoginInfoView;->nickTx:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/wepie/snake/module/login/UserInfo;->nickname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v1, p0, Lcom/wepie/snake/module/home/user/LoginInfoView;->nickEditTx:Landroid/widget/EditText;

    iget-object v2, v0, Lcom/wepie/snake/module/login/UserInfo;->nickname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v1, p0, Lcom/wepie/snake/module/home/user/LoginInfoView;->ageEditTx:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v0, Lcom/wepie/snake/module/login/UserInfo;->age:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v1, p0, Lcom/wepie/snake/module/home/user/LoginInfoView;->ageEditTx:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/wepie/snake/module/home/user/LoginInfoView;->ageEditTx:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 169
    iget-object v1, p0, Lcom/wepie/snake/module/home/user/LoginInfoView;->nickEditTx:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/wepie/snake/module/home/user/LoginInfoView;->nickEditTx:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 171
    iget-object v2, p0, Lcom/wepie/snake/module/home/user/LoginInfoView;->loginTypeTx:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u60a8\u73b0\u5728\u662f"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/wepie/snake/module/login/LoginHelper;->isQQUser()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "QQ"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\u5e10\u53f7\u767b\u5f55"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    invoke-virtual {v0}, Lcom/wepie/snake/module/login/UserInfo;->isMale()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 174
    iget-object v1, p0, Lcom/wepie/snake/module/home/user/LoginInfoView;->maleBt:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 175
    iget-object v1, p0, Lcom/wepie/snake/module/home/user/LoginInfoView;->femaleBt:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 183
    :goto_1
    return-void

    .line 171
    :cond_0
    const-string v1, "\u5fae\u4fe1"

    goto :goto_0

    .line 176
    :cond_1
    invoke-virtual {v0}, Lcom/wepie/snake/module/login/UserInfo;->isFemale()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 177
    iget-object v1, p0, Lcom/wepie/snake/module/home/user/LoginInfoView;->maleBt:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 178
    iget-object v1, p0, Lcom/wepie/snake/module/home/user/LoginInfoView;->femaleBt:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 180
    :cond_2
    iget-object v1, p0, Lcom/wepie/snake/module/home/user/LoginInfoView;->maleBt:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 181
    iget-object v1, p0, Lcom/wepie/snake/module/home/user/LoginInfoView;->femaleBt:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method
