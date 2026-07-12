.class public final synthetic Lorg/xbill/DNS/lookup/LookupResult$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lorg/xbill/DNS/Message;

    invoke-static {p1}, Lorg/xbill/DNS/lookup/LookupResult;->lambda$new$0(Lorg/xbill/DNS/Message;)Z

    move-result p1

    return p1
.end method
