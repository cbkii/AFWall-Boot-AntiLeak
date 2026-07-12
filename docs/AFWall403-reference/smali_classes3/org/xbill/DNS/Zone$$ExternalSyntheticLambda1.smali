.class public final synthetic Lorg/xbill/DNS/Zone$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lorg/xbill/DNS/Zone;


# direct methods
.method public synthetic constructor <init>(Lorg/xbill/DNS/Zone;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/xbill/DNS/Zone$$ExternalSyntheticLambda1;->f$0:Lorg/xbill/DNS/Zone;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/Zone$$ExternalSyntheticLambda1;->f$0:Lorg/xbill/DNS/Zone;

    invoke-virtual {v0}, Lorg/xbill/DNS/Zone;->lambda$getNS$0$org-xbill-DNS-Zone()Lorg/xbill/DNS/RRset;

    move-result-object v0

    return-object v0
.end method
