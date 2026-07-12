.class public Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "LogDetailRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field final blockCount:Landroid/widget/TextView;

.field final dataDest:Landroid/widget/TextView;

.field final dataHost:Landroid/widget/TextView;

.field final dataProto:Landroid/widget/TextView;

.field final dataSrc:Landroid/widget/TextView;

.field final deniedTime:Landroid/widget/TextView;

.field final icon:Landroid/widget/ImageView;

.field final packetSize:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 248
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 249
    sget v0, Ldev/ukanth/ufirewall/R$id;->data_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 250
    sget v0, Ldev/ukanth/ufirewall/R$id;->denied_time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter$ViewHolder;->deniedTime:Landroid/widget/TextView;

    .line 251
    sget v0, Ldev/ukanth/ufirewall/R$id;->data_dest:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter$ViewHolder;->dataDest:Landroid/widget/TextView;

    .line 252
    sget v0, Ldev/ukanth/ufirewall/R$id;->data_src:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter$ViewHolder;->dataSrc:Landroid/widget/TextView;

    .line 253
    sget v0, Ldev/ukanth/ufirewall/R$id;->data_proto:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter$ViewHolder;->dataProto:Landroid/widget/TextView;

    .line 254
    sget v0, Ldev/ukanth/ufirewall/R$id;->data_host:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter$ViewHolder;->dataHost:Landroid/widget/TextView;

    .line 255
    sget v0, Ldev/ukanth/ufirewall/R$id;->packet_size:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter$ViewHolder;->packetSize:Landroid/widget/TextView;

    .line 256
    sget v0, Ldev/ukanth/ufirewall/R$id;->block_count:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter$ViewHolder;->blockCount:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public bind(Ldev/ukanth/ufirewall/log/LogData;Ldev/ukanth/ufirewall/log/RecyclerItemClickListener;)V
    .locals 2

    .line 260
    iget-object v0, p0, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter$ViewHolder$1;

    invoke-direct {v1, p0, p2, p1}, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter$ViewHolder$1;-><init>(Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter$ViewHolder;Ldev/ukanth/ufirewall/log/RecyclerItemClickListener;Ldev/ukanth/ufirewall/log/LogData;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
