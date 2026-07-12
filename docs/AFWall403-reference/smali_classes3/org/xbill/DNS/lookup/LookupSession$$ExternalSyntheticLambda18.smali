.class public final synthetic Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/xbill/DNS/lookup/LookupSession;

.field public final synthetic f$1:Lorg/xbill/DNS/Record;


# direct methods
.method public synthetic constructor <init>(Lorg/xbill/DNS/lookup/LookupSession;Lorg/xbill/DNS/Record;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda18;->f$0:Lorg/xbill/DNS/lookup/LookupSession;

    iput-object p2, p0, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda18;->f$1:Lorg/xbill/DNS/Record;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda18;->f$0:Lorg/xbill/DNS/lookup/LookupSession;

    iget-object v1, p0, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda18;->f$1:Lorg/xbill/DNS/Record;

    check-cast p1, Lorg/xbill/DNS/lookup/LookupResult;

    invoke-virtual {v0, v1, p1}, Lorg/xbill/DNS/lookup/LookupSession;->lambda$lookupUntilSuccess$2$org-xbill-DNS-lookup-LookupSession(Lorg/xbill/DNS/Record;Lorg/xbill/DNS/lookup/LookupResult;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1
.end method
