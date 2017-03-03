.class Lcom/wepie/snake/module/home/NicknameModifyView$1;
.super Ljava/lang/Object;
.source "NicknameModifyView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/module/home/NicknameModifyView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/module/home/NicknameModifyView;


# direct methods
.method constructor <init>(Lcom/wepie/snake/module/home/NicknameModifyView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/module/home/NicknameModifyView;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/wepie/snake/module/home/NicknameModifyView$1;->this$0:Lcom/wepie/snake/module/home/NicknameModifyView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/wepie/snake/module/home/NicknameModifyView$1;->this$0:Lcom/wepie/snake/module/home/NicknameModifyView;

    # getter for: Lcom/wepie/snake/module/home/NicknameModifyView;->description:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/wepie/snake/module/home/NicknameModifyView;->access$000(Lcom/wepie/snake/module/home/NicknameModifyView;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 53
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 58
    return-void
.end method
