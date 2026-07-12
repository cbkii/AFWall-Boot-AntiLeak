.class public final synthetic Ldev/ukanth/ufirewall/Api$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ldev/ukanth/ufirewall/util/FileDialog$DirectorySelectedListener;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(ZLandroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticLambda11;->f$0:Z

    iput-object p2, p0, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticLambda11;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final directorySelected(Ljava/io/File;)V
    .locals 2

    iget-boolean v0, p0, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticLambda11;->f$0:Z

    iget-object v1, p0, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticLambda11;->f$1:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Ldev/ukanth/ufirewall/Api;->lambda$showExportFileDialog$3(ZLandroid/content/Context;Ljava/io/File;)V

    return-void
.end method
