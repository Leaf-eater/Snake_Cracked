.class final Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEventOnSubscribe;
.super Ljava/lang/Object;
.source "AbsListViewScrollEventOnSubscribe.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<",
        "Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final view:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEventOnSubscribe;->view:Landroid/widget/AbsListView;

    .line 17
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 10
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEventOnSubscribe;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEvent;>;"
    invoke-static {}, Lcom/jakewharton/rxbinding/internal/Preconditions;->checkUiThread()V

    .line 22
    new-instance v0, Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEventOnSubscribe$1;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEventOnSubscribe$1;-><init>(Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEventOnSubscribe;Lrx/Subscriber;)V

    .line 48
    .local v0, "listener":Landroid/widget/AbsListView$OnScrollListener;
    iget-object v1, p0, Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEventOnSubscribe;->view:Landroid/widget/AbsListView;

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 50
    new-instance v1, Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEventOnSubscribe$2;

    invoke-direct {v1, p0}, Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEventOnSubscribe$2;-><init>(Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEventOnSubscribe;)V

    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 55
    return-void
.end method
