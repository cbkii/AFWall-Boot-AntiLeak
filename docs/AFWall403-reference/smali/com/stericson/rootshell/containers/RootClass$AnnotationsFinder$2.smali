.class Lcom/stericson/rootshell/containers/RootClass$AnnotationsFinder$2;
.super Ljava/lang/Object;
.source "RootClass.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stericson/rootshell/containers/RootClass$AnnotationsFinder;->getBuiltPath()Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stericson/rootshell/containers/RootClass$AnnotationsFinder;


# direct methods
.method constructor <init>(Lcom/stericson/rootshell/containers/RootClass$AnnotationsFinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/stericson/rootshell/containers/RootClass$AnnotationsFinder$2;->this$0:Lcom/stericson/rootshell/containers/RootClass$AnnotationsFinder;

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 0

    .line 297
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    return p1
.end method
