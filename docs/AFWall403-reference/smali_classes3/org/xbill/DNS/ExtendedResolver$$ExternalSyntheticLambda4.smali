.class public final synthetic Lorg/xbill/DNS/ExtendedResolver$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lorg/xbill/DNS/Resolver;


# direct methods
.method public synthetic constructor <init>(Lorg/xbill/DNS/Resolver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/xbill/DNS/ExtendedResolver$$ExternalSyntheticLambda4;->f$0:Lorg/xbill/DNS/Resolver;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/ExtendedResolver$$ExternalSyntheticLambda4;->f$0:Lorg/xbill/DNS/Resolver;

    check-cast p1, Lorg/xbill/DNS/ExtendedResolver$ResolverEntry;

    invoke-static {v0, p1}, Lorg/xbill/DNS/ExtendedResolver;->lambda$deleteResolver$3(Lorg/xbill/DNS/Resolver;Lorg/xbill/DNS/ExtendedResolver$ResolverEntry;)Z

    move-result p1

    return p1
.end method
