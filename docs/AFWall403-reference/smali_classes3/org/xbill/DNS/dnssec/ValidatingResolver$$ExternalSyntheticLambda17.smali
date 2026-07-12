.class public final synthetic Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/xbill/DNS/dnssec/ValidatingResolver;

.field public final synthetic f$1:Ljava/util/Map;

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Ljava/util/List;

.field public final synthetic f$4:Lorg/xbill/DNS/dnssec/SMessage;

.field public final synthetic f$5:Lorg/xbill/DNS/dnssec/Nsec3ValidationState;


# direct methods
.method public synthetic constructor <init>(Lorg/xbill/DNS/dnssec/ValidatingResolver;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Lorg/xbill/DNS/dnssec/SMessage;Lorg/xbill/DNS/dnssec/Nsec3ValidationState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda17;->f$0:Lorg/xbill/DNS/dnssec/ValidatingResolver;

    iput-object p2, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda17;->f$1:Ljava/util/Map;

    iput-object p3, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda17;->f$2:Ljava/util/List;

    iput-object p4, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda17;->f$3:Ljava/util/List;

    iput-object p5, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda17;->f$4:Lorg/xbill/DNS/dnssec/SMessage;

    iput-object p6, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda17;->f$5:Lorg/xbill/DNS/dnssec/Nsec3ValidationState;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda17;->f$0:Lorg/xbill/DNS/dnssec/ValidatingResolver;

    iget-object v1, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda17;->f$1:Ljava/util/Map;

    iget-object v2, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda17;->f$2:Ljava/util/List;

    iget-object v3, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda17;->f$3:Ljava/util/List;

    iget-object v4, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda17;->f$4:Lorg/xbill/DNS/dnssec/SMessage;

    iget-object v5, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda17;->f$5:Lorg/xbill/DNS/dnssec/Nsec3ValidationState;

    move-object v6, p1

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual/range {v0 .. v6}, Lorg/xbill/DNS/dnssec/ValidatingResolver;->lambda$validatePositiveResponse$1$org-xbill-DNS-dnssec-ValidatingResolver(Ljava/util/Map;Ljava/util/List;Ljava/util/List;Lorg/xbill/DNS/dnssec/SMessage;Lorg/xbill/DNS/dnssec/Nsec3ValidationState;Ljava/lang/Boolean;)V

    return-void
.end method
