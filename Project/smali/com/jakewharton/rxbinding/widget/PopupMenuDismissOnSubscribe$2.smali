.class Lcom/jakewharton/rxbinding/widget/PopupMenuDismissOnSubscribe$2;
.super Lrx/android/MainThreadSubscription;
.source "PopupMenuDismissOnSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/widget/PopupMenuDismissOnSubscribe;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jakewharton/rxbinding/widget/PopupMenuDismissOnSubscribe;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/widget/PopupMenuDismissOnSubscribe;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jakewharton/rxbinding/widget/PopupMenuDismissOnSubscribe;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/jakewharton/rxbinding/widget/PopupMenuDismissOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/widget/PopupMenuDismissOnSubscribe;

    invoke-direct {p0}, Lrx/android/MainThreadSubscription;-><init>()V

    return-void
.end method


# virtual methods
.method protected onUnsubscribe()V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/PopupMenuDismissOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/widget/PopupMenuDismissOnSubscribe;

    iget-object v0, v0, Lcom/jakewharton/rxbinding/widget/PopupMenuDismissOnSubscribe;->view:Landroid/widget/PopupMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 34
    return-void
.end method