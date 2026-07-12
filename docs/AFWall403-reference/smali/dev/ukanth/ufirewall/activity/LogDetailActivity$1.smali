.class Ldev/ukanth/ufirewall/activity/LogDetailActivity$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "LogDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/ukanth/ufirewall/activity/LogDetailActivity;->setupLoadMoreFunctionality()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldev/ukanth/ufirewall/activity/LogDetailActivity;


# direct methods
.method constructor <init>(Ldev/ukanth/ufirewall/activity/LogDetailActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity$1;->this$0:Ldev/ukanth/ufirewall/activity/LogDetailActivity;

    .line 587
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 590
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 592
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p1, :cond_0

    iget-object p2, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity$1;->this$0:Ldev/ukanth/ufirewall/activity/LogDetailActivity;

    .line 593
    invoke-static {p2}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->-$$Nest$fgetisLoading(Ldev/ukanth/ufirewall/activity/LogDetailActivity;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 594
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result p2

    .line 595
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getItemCount()I

    move-result p3

    .line 596
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    add-int/2addr p2, p1

    add-int/lit8 p3, p3, -0xa

    if-lt p2, p3, :cond_0

    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/LogDetailActivity$1;->this$0:Ldev/ukanth/ufirewall/activity/LogDetailActivity;

    .line 600
    invoke-static {p1}, Ldev/ukanth/ufirewall/activity/LogDetailActivity;->-$$Nest$mloadMoreData(Ldev/ukanth/ufirewall/activity/LogDetailActivity;)V

    :cond_0
    return-void
.end method
