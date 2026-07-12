.class public final synthetic Lorg/xbill/DNS/Zone$ZoneIterator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lorg/xbill/DNS/Zone$ZoneIterator;

.field public final synthetic f$1:Ljava/util/Map$Entry;


# direct methods
.method public synthetic constructor <init>(Lorg/xbill/DNS/Zone$ZoneIterator;Ljava/util/Map$Entry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/xbill/DNS/Zone$ZoneIterator$$ExternalSyntheticLambda0;->f$0:Lorg/xbill/DNS/Zone$ZoneIterator;

    iput-object p2, p0, Lorg/xbill/DNS/Zone$ZoneIterator$$ExternalSyntheticLambda0;->f$1:Ljava/util/Map$Entry;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/xbill/DNS/Zone$ZoneIterator$$ExternalSyntheticLambda0;->f$0:Lorg/xbill/DNS/Zone$ZoneIterator;

    iget-object v1, p0, Lorg/xbill/DNS/Zone$ZoneIterator$$ExternalSyntheticLambda0;->f$1:Ljava/util/Map$Entry;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Zone$ZoneIterator;->lambda$next$1$org-xbill-DNS-Zone$ZoneIterator(Ljava/util/Map$Entry;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
