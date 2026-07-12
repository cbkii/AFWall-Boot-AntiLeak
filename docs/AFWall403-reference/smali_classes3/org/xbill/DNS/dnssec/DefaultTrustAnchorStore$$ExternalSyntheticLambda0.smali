.class public final synthetic Lorg/xbill/DNS/dnssec/DefaultTrustAnchorStore$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/xbill/DNS/RRset;


# direct methods
.method public synthetic constructor <init>(Lorg/xbill/DNS/RRset;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/xbill/DNS/dnssec/DefaultTrustAnchorStore$$ExternalSyntheticLambda0;->f$0:Lorg/xbill/DNS/RRset;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/dnssec/DefaultTrustAnchorStore$$ExternalSyntheticLambda0;->f$0:Lorg/xbill/DNS/RRset;

    check-cast p1, Lorg/xbill/DNS/Record;

    invoke-virtual {v0, p1}, Lorg/xbill/DNS/RRset;->addRR(Lorg/xbill/DNS/Record;)V

    return-void
.end method
