.class Lorg/xbill/DNS/Zone$ZoneIterator;
.super Ljava/lang/Object;
.source "Zone.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/Zone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ZoneIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/xbill/DNS/RRset;",
        ">;"
    }
.end annotation


# instance fields
.field private current:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/xbill/DNS/RRset;",
            ">;"
        }
    .end annotation
.end field

.field private index:I

.field private returnedSet:Lorg/xbill/DNS/RRset;

.field private soaSet:Lorg/xbill/DNS/RRset;

.field final synthetic this$0:Lorg/xbill/DNS/Zone;

.field private wantLastSOA:Z

.field private final zoneEntries:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Lorg/xbill/DNS/Name;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/xbill/DNS/Zone;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->this$0:Lorg/xbill/DNS/Zone;

    .line 756
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 757
    invoke-static {p1}, Lorg/xbill/DNS/Zone;->access$000(Lorg/xbill/DNS/Zone;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->zoneEntries:Ljava/util/Iterator;

    iput-boolean p2, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->wantLastSOA:Z

    .line 762
    new-instance p2, Lorg/xbill/DNS/Zone$ZoneIterator$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lorg/xbill/DNS/Zone$ZoneIterator$$ExternalSyntheticLambda2;-><init>(Lorg/xbill/DNS/Zone$ZoneIterator;)V

    .line 763
    invoke-static {p1, p2}, Lorg/xbill/DNS/Zone;->access$100(Lorg/xbill/DNS/Zone;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 764
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Lorg/xbill/DNS/RRset;

    .line 765
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->current:Ljava/util/List;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 766
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 767
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/xbill/DNS/RRset;

    .line 768
    invoke-virtual {v4}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_0

    .line 770
    new-instance v5, Lorg/xbill/DNS/RRset;

    invoke-direct {v5, v4}, Lorg/xbill/DNS/RRset;-><init>(Lorg/xbill/DNS/RRset;)V

    iput-object v5, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->soaSet:Lorg/xbill/DNS/RRset;

    aput-object v5, p2, v0

    goto :goto_1

    :cond_0
    if-ne v5, v1, :cond_1

    .line 772
    new-instance v5, Lorg/xbill/DNS/RRset;

    invoke-direct {v5, v4}, Lorg/xbill/DNS/RRset;-><init>(Lorg/xbill/DNS/RRset;)V

    const/4 v4, 0x1

    aput-object v5, p2, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v3, 0x1

    .line 774
    new-instance v6, Lorg/xbill/DNS/RRset;

    invoke-direct {v6, v4}, Lorg/xbill/DNS/RRset;-><init>(Lorg/xbill/DNS/RRset;)V

    aput-object v6, p2, v3

    move v3, v5

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->current:Ljava/util/List;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->wantLastSOA:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method synthetic lambda$new$0$org-xbill-DNS-Zone$ZoneIterator()Ljava/util/ArrayList;
    .locals 3

    .line 763
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->this$0:Lorg/xbill/DNS/Zone;

    invoke-static {v1}, Lorg/xbill/DNS/Zone;->access$600(Lorg/xbill/DNS/Zone;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/xbill/DNS/Zone;->access$500(Lorg/xbill/DNS/Zone;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method synthetic lambda$next$1$org-xbill-DNS-Zone$ZoneIterator(Ljava/util/Map$Entry;)Ljava/util/ArrayList;
    .locals 2

    .line 813
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->this$0:Lorg/xbill/DNS/Zone;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/xbill/DNS/Zone;->access$500(Lorg/xbill/DNS/Zone;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method synthetic lambda$remove$2$org-xbill-DNS-Zone$ZoneIterator()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->this$0:Lorg/xbill/DNS/Zone;

    iget-object v1, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->returnedSet:Lorg/xbill/DNS/RRset;

    .line 841
    invoke-virtual {v1}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    iget-object v2, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->returnedSet:Lorg/xbill/DNS/RRset;

    invoke-virtual {v2}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/xbill/DNS/Zone;->access$400(Lorg/xbill/DNS/Zone;Lorg/xbill/DNS/Name;I)V

    return-void
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 748
    invoke-virtual {p0}, Lorg/xbill/DNS/Zone$ZoneIterator;->next()Lorg/xbill/DNS/RRset;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/xbill/DNS/RRset;
    .locals 5

    .line 786
    invoke-virtual {p0}, Lorg/xbill/DNS/Zone$ZoneIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->current:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->wantLastSOA:Z

    iget-object v0, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->soaSet:Lorg/xbill/DNS/RRset;

    iput-object v0, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->returnedSet:Lorg/xbill/DNS/RRset;

    return-object v0

    .line 798
    :cond_0
    new-instance v2, Lorg/xbill/DNS/RRset;

    iget v3, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->index:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->index:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/RRset;

    invoke-direct {v2, v0}, Lorg/xbill/DNS/RRset;-><init>(Lorg/xbill/DNS/RRset;)V

    iput-object v2, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->returnedSet:Lorg/xbill/DNS/RRset;

    iget v0, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->index:I

    iget-object v2, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->current:Ljava/util/List;

    .line 801
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->current:Ljava/util/List;

    :goto_0
    iget-object v0, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->zoneEntries:Ljava/util/Iterator;

    .line 803
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->zoneEntries:Ljava/util/Iterator;

    .line 804
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 807
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xbill/DNS/Name;

    iget-object v3, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->this$0:Lorg/xbill/DNS/Zone;

    invoke-static {v3}, Lorg/xbill/DNS/Zone;->access$200(Lorg/xbill/DNS/Zone;)Lorg/xbill/DNS/Name;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->this$0:Lorg/xbill/DNS/Zone;

    .line 812
    new-instance v3, Lorg/xbill/DNS/Zone$ZoneIterator$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0}, Lorg/xbill/DNS/Zone$ZoneIterator$$ExternalSyntheticLambda0;-><init>(Lorg/xbill/DNS/Zone$ZoneIterator;Ljava/util/Map$Entry;)V

    .line 813
    invoke-static {v2, v3}, Lorg/xbill/DNS/Zone;->access$100(Lorg/xbill/DNS/Zone;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 814
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    iput-object v0, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->current:Ljava/util/List;

    iput v1, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->index:I

    :cond_3
    iget-object v0, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->returnedSet:Lorg/xbill/DNS/RRset;

    return-object v0

    .line 787
    :cond_4
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No more elements"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .locals 2

    iget-object v0, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->returnedSet:Lorg/xbill/DNS/RRset;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xbill/DNS/Zone$ZoneIterator;->this$0:Lorg/xbill/DNS/Zone;

    .line 841
    new-instance v1, Lorg/xbill/DNS/Zone$ZoneIterator$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/xbill/DNS/Zone$ZoneIterator$$ExternalSyntheticLambda1;-><init>(Lorg/xbill/DNS/Zone$ZoneIterator;)V

    invoke-static {v0, v1}, Lorg/xbill/DNS/Zone;->access$300(Lorg/xbill/DNS/Zone;Ljava/lang/Runnable;)V

    return-void

    .line 838
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not at an element"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
