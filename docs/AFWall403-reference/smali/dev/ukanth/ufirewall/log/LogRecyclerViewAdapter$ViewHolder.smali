.class public Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "LogRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field final appName:Landroid/widget/TextView;

.field final dataDenied:Landroid/widget/TextView;

.field final icon:Landroid/widget/ImageView;

.field final lastDenied:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 116
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 117
    sget v0, Ldev/ukanth/ufirewall/R$id;->app_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 118
    sget v0, Ldev/ukanth/ufirewall/R$id;->app_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter$ViewHolder;->appName:Landroid/widget/TextView;

    .line 119
    sget v0, Ldev/ukanth/ufirewall/R$id;->last_denied:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter$ViewHolder;->lastDenied:Landroid/widget/TextView;

    .line 120
    sget v0, Ldev/ukanth/ufirewall/R$id;->data_denied:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter$ViewHolder;->dataDenied:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic lambda$bind$0(Ldev/ukanth/ufirewall/log/RecyclerItemClickListener;Ldev/ukanth/ufirewall/log/LogData;Landroid/view/View;)V
    .locals 0

    .line 124
    invoke-interface {p0, p1}, Ldev/ukanth/ufirewall/log/RecyclerItemClickListener;->onItemClick(Ldev/ukanth/ufirewall/log/LogData;)V

    return-void
.end method


# virtual methods
.method public bind(Ldev/ukanth/ufirewall/log/LogData;Ldev/ukanth/ufirewall/log/RecyclerItemClickListener;)V
    .locals 2

    .line 124
    iget-object v0, p0, Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter$ViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2, p1}, Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter$ViewHolder$$ExternalSyntheticLambda0;-><init>(Ldev/ukanth/ufirewall/log/RecyclerItemClickListener;Ldev/ukanth/ufirewall/log/LogData;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
