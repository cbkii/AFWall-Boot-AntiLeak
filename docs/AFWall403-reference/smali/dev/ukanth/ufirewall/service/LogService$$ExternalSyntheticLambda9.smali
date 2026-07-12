.class public final synthetic Ldev/ukanth/ufirewall/service/LogService$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransaction;


# instance fields
.field public final synthetic f$0:Ldev/ukanth/ufirewall/log/LogData;


# direct methods
.method public synthetic constructor <init>(Ldev/ukanth/ufirewall/log/LogData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/ukanth/ufirewall/service/LogService$$ExternalSyntheticLambda9;->f$0:Ldev/ukanth/ufirewall/log/LogData;

    return-void
.end method


# virtual methods
.method public final execute(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V
    .locals 1

    iget-object v0, p0, Ldev/ukanth/ufirewall/service/LogService$$ExternalSyntheticLambda9;->f$0:Ldev/ukanth/ufirewall/log/LogData;

    invoke-static {v0, p1}, Ldev/ukanth/ufirewall/service/LogService;->lambda$store$11(Ldev/ukanth/ufirewall/log/LogData;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V

    return-void
.end method
