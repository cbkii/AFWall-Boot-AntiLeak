.class Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DefaultRvAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afollestad/materialdialogs/DefaultRvAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DefaultVH"
.end annotation


# instance fields
.field final adapter:Lcom/afollestad/materialdialogs/DefaultRvAdapter;

.field final control:Landroid/widget/CompoundButton;

.field final title:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/afollestad/materialdialogs/DefaultRvAdapter;)V
    .locals 1

    .line 185
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 186
    sget v0, Lcom/afollestad/materialdialogs/R$id;->md_control:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;->control:Landroid/widget/CompoundButton;

    .line 187
    sget v0, Lcom/afollestad/materialdialogs/R$id;->md_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;->title:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;->adapter:Lcom/afollestad/materialdialogs/DefaultRvAdapter;

    .line 189
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    invoke-static {p2}, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->access$000(Lcom/afollestad/materialdialogs/DefaultRvAdapter;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object p2

    iget-object p2, p2, Lcom/afollestad/materialdialogs/MaterialDialog;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object p2, p2, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->listLongCallback:Lcom/afollestad/materialdialogs/MaterialDialog$ListLongCallback;

    if-eqz p2, :cond_0

    .line 191
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;->adapter:Lcom/afollestad/materialdialogs/DefaultRvAdapter;

    .line 197
    invoke-static {v0}, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->access$100(Lcom/afollestad/materialdialogs/DefaultRvAdapter;)Lcom/afollestad/materialdialogs/DefaultRvAdapter$InternalListCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;->adapter:Lcom/afollestad/materialdialogs/DefaultRvAdapter;

    .line 199
    invoke-static {v0}, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->access$000(Lcom/afollestad/materialdialogs/DefaultRvAdapter;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;->getAdapterPosition()I

    move-result v0

    iget-object v1, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;->adapter:Lcom/afollestad/materialdialogs/DefaultRvAdapter;

    invoke-static {v1}, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->access$000(Lcom/afollestad/materialdialogs/DefaultRvAdapter;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v1

    iget-object v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;->adapter:Lcom/afollestad/materialdialogs/DefaultRvAdapter;

    .line 201
    invoke-static {v0}, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->access$000(Lcom/afollestad/materialdialogs/DefaultRvAdapter;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v5, v0

    iget-object v0, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;->adapter:Lcom/afollestad/materialdialogs/DefaultRvAdapter;

    .line 203
    invoke-static {v0}, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->access$100(Lcom/afollestad/materialdialogs/DefaultRvAdapter;)Lcom/afollestad/materialdialogs/DefaultRvAdapter$InternalListCallback;

    move-result-object v1

    iget-object v0, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;->adapter:Lcom/afollestad/materialdialogs/DefaultRvAdapter;

    invoke-static {v0}, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->access$000(Lcom/afollestad/materialdialogs/DefaultRvAdapter;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v2

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;->getAdapterPosition()I

    move-result v4

    const/4 v6, 0x0

    move-object v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/afollestad/materialdialogs/DefaultRvAdapter$InternalListCallback;->onItemSelected(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;Z)Z

    :cond_1
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 7

    iget-object v0, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;->adapter:Lcom/afollestad/materialdialogs/DefaultRvAdapter;

    .line 209
    invoke-static {v0}, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->access$100(Lcom/afollestad/materialdialogs/DefaultRvAdapter;)Lcom/afollestad/materialdialogs/DefaultRvAdapter$InternalListCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;->adapter:Lcom/afollestad/materialdialogs/DefaultRvAdapter;

    .line 211
    invoke-static {v0}, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->access$000(Lcom/afollestad/materialdialogs/DefaultRvAdapter;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;->getAdapterPosition()I

    move-result v0

    iget-object v1, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;->adapter:Lcom/afollestad/materialdialogs/DefaultRvAdapter;

    invoke-static {v1}, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->access$000(Lcom/afollestad/materialdialogs/DefaultRvAdapter;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v1

    iget-object v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;->adapter:Lcom/afollestad/materialdialogs/DefaultRvAdapter;

    .line 213
    invoke-static {v0}, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->access$000(Lcom/afollestad/materialdialogs/DefaultRvAdapter;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->builder:Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v5, v0

    iget-object v0, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;->adapter:Lcom/afollestad/materialdialogs/DefaultRvAdapter;

    .line 215
    invoke-static {v0}, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->access$100(Lcom/afollestad/materialdialogs/DefaultRvAdapter;)Lcom/afollestad/materialdialogs/DefaultRvAdapter$InternalListCallback;

    move-result-object v1

    iget-object v0, p0, Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;->adapter:Lcom/afollestad/materialdialogs/DefaultRvAdapter;

    .line 216
    invoke-static {v0}, Lcom/afollestad/materialdialogs/DefaultRvAdapter;->access$000(Lcom/afollestad/materialdialogs/DefaultRvAdapter;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v2

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/DefaultRvAdapter$DefaultVH;->getAdapterPosition()I

    move-result v4

    const/4 v6, 0x1

    move-object v3, p1

    .line 215
    invoke-interface/range {v1 .. v6}, Lcom/afollestad/materialdialogs/DefaultRvAdapter$InternalListCallback;->onItemSelected(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;Z)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
