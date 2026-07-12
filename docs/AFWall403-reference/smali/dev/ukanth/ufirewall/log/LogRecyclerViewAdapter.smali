.class public Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "LogRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static prettyTime:Lorg/ocpsoft/prettytime/PrettyTime;


# instance fields
.field private final context:Landroid/content/Context;

.field private data:Ldev/ukanth/ufirewall/log/LogData;

.field private info:Landroid/content/pm/PackageInfo;

.field private final logData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ldev/ukanth/ufirewall/log/LogData;",
            ">;"
        }
    .end annotation
.end field

.field private mView:Landroid/view/View;

.field private final recyclerItemClickListener:Ldev/ukanth/ufirewall/log/RecyclerItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ldev/ukanth/ufirewall/log/RecyclerItemClickListener;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter;->context:Landroid/content/Context;

    .line 46
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter;->logData:Ljava/util/List;

    iput-object p2, p0, Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter;->recyclerItemClickListener:Ldev/ukanth/ufirewall/log/RecyclerItemClickListener;

    return-void
.end method

.method public static pretty(Ljava/util/Date;)Ljava/lang/String;
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter;->prettyTime:Lorg/ocpsoft/prettytime/PrettyTime;

    if-nez v0, :cond_1

    .line 90
    new-instance v0, Lorg/ocpsoft/prettytime/PrettyTime;

    new-instance v1, Ljava/util/Locale;

    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->locale()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/ocpsoft/prettytime/PrettyTime;-><init>(Ljava/util/Locale;)V

    sput-object v0, Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter;->prettyTime:Lorg/ocpsoft/prettytime/PrettyTime;

    .line 91
    invoke-virtual {v0}, Lorg/ocpsoft/prettytime/PrettyTime;->getUnits()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ocpsoft/prettytime/TimeUnit;

    .line 92
    instance-of v2, v1, Lorg/ocpsoft/prettytime/units/JustNow;

    if-eqz v2, :cond_0

    sget-object v0, Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter;->prettyTime:Lorg/ocpsoft/prettytime/PrettyTime;

    .line 93
    invoke-virtual {v0, v1}, Lorg/ocpsoft/prettytime/PrettyTime;->removeUnit(Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/TimeFormat;

    :cond_1
    sget-object v0, Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter;->prettyTime:Lorg/ocpsoft/prettytime/PrettyTime;

    .line 98
    invoke-virtual {v0, p0}, Lorg/ocpsoft/prettytime/PrettyTime;->setReference(Ljava/util/Date;)Lorg/ocpsoft/prettytime/PrettyTime;

    sget-object p0, Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter;->prettyTime:Lorg/ocpsoft/prettytime/PrettyTime;

    .line 99
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter;->logData:Ljava/util/List;

    .line 104
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 33
    check-cast p1, Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter;->onBindViewHolder(Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter$ViewHolder;I)V
    .locals 5

    iget-object v0, p0, Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter;->logData:Ljava/util/List;

    .line 63
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldev/ukanth/ufirewall/log/LogData;

    iput-object v0, p0, Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter;->data:Ldev/ukanth/ufirewall/log/LogData;

    iget-object v0, p0, Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter;->logData:Ljava/util/List;

    .line 64
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ldev/ukanth/ufirewall/log/LogData;

    iget-object v0, p0, Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter;->recyclerItemClickListener:Ldev/ukanth/ufirewall/log/RecyclerItemClickListener;

    invoke-virtual {p1, p2, v0}, Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter$ViewHolder;->bind(Ldev/ukanth/ufirewall/log/LogData;Ldev/ukanth/ufirewall/log/RecyclerItemClickListener;)V

    :try_start_0
    iget-object p2, p0, Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter;->context:Landroid/content/Context;

    iget-object v0, p0, Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter;->data:Ldev/ukanth/ufirewall/log/LogData;

    .line 66
    invoke-virtual {v0}, Ldev/ukanth/ufirewall/log/LogData;->getUid()I

    move-result v0

    invoke-static {p2, v0}, Ldev/ukanth/ufirewall/Api;->getApplicationIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 67
    iget-object v0, p1, Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v0, "AFWall"

    .line 69
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 74
    :goto_0
    :try_start_1
    iget-object p2, p1, Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter$ViewHolder;->lastDenied:Landroid/widget/TextView;

    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter;->data:Ldev/ukanth/ufirewall/log/LogData;

    invoke-virtual {v3}, Ldev/ukanth/ufirewall/log/LogData;->getTimestamp()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0}, Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter;->pretty(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 77
    :catch_1
    iget-object p2, p1, Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter$ViewHolder;->lastDenied:Landroid/widget/TextView;

    const-string v0, "-"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    :goto_1
    iget-object p2, p1, Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter$ViewHolder;->appName:Landroid/widget/TextView;

    iget-object v0, p0, Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter;->data:Ldev/ukanth/ufirewall/log/LogData;

    invoke-virtual {v0}, Ldev/ukanth/ufirewall/log/LogData;->getAppName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter;->data:Ldev/ukanth/ufirewall/log/LogData;

    invoke-virtual {v1}, Ldev/ukanth/ufirewall/log/LogData;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter;->data:Ldev/ukanth/ufirewall/log/LogData;

    invoke-virtual {v1}, Ldev/ukanth/ufirewall/log/LogData;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter;->context:Landroid/content/Context;

    sget v1, Ldev/ukanth/ufirewall/R$string;->log_deletedapp:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter;->data:Ldev/ukanth/ufirewall/log/LogData;

    .line 80
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogData;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    const-string p2, " "

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 81
    iget-object v0, p1, Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter$ViewHolder;->dataDenied:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter;->context:Landroid/content/Context;

    sget v3, Ldev/ukanth/ufirewall/R$string;->log_denied:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter;->data:Ldev/ukanth/ufirewall/log/LogData;

    invoke-virtual {v2}, Ldev/ukanth/ufirewall/log/LogData;->getCount()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter;->context:Landroid/content/Context;

    sget v2, Ldev/ukanth/ufirewall/R$string;->log_times:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 83
    :cond_1
    iget-object v0, p1, Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter$ViewHolder;->dataDenied:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter;->context:Landroid/content/Context;

    sget v3, Ldev/ukanth/ufirewall/R$string;->log_denied:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter;->data:Ldev/ukanth/ufirewall/log/LogData;

    invoke-virtual {v2}, Ldev/ukanth/ufirewall/log/LogData;->getCount()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter;->context:Landroid/content/Context;

    sget v2, Ldev/ukanth/ufirewall/R$string;->log_time:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    :goto_3
    iget-object p1, p1, Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 33
    invoke-virtual {p0, p1, p2}, Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter$ViewHolder;
    .locals 2

    .line 57
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Ldev/ukanth/ufirewall/R$layout;->log_recycle_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter;->mView:Landroid/view/View;

    .line 58
    new-instance p1, Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter$ViewHolder;

    iget-object p2, p0, Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter;->mView:Landroid/view/View;

    invoke-direct {p1, p2}, Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public updateData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ldev/ukanth/ufirewall/log/LogData;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter;->logData:Ljava/util/List;

    .line 51
    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Ldev/ukanth/ufirewall/log/LogRecyclerViewAdapter;->logData:Ljava/util/List;

    .line 52
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
