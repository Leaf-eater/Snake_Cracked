.class public Lcom/wepie/snake/helper/softInput/IMMHelper;
.super Ljava/lang/Object;
.source "IMMHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hideSoftInput(Landroid/content/Context;Landroid/os/IBinder;)V
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .prologue
    .line 14
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 15
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 16
    return-void
.end method

.method public static showSoftInput(Landroid/widget/EditText;Landroid/content/Context;)V
    .locals 2
    .param p0, "mEditText"    # Landroid/widget/EditText;
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 19
    const-string v1, "input_method"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 20
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 22
    return-void
.end method
