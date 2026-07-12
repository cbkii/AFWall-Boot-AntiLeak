.class Lcom/stericson/rootshell/containers/RootClass$AnnotationsFinder$1;
.super Ljava/lang/Object;
.source "RootClass.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stericson/rootshell/containers/RootClass$AnnotationsFinder;->lookup(Ljava/io/File;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stericson/rootshell/containers/RootClass$AnnotationsFinder;

.field final synthetic val$fileNamePrefix:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/stericson/rootshell/containers/RootClass$AnnotationsFinder;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stericson/rootshell/containers/RootClass$AnnotationsFinder$1;->this$0:Lcom/stericson/rootshell/containers/RootClass$AnnotationsFinder;

    iput-object p2, p0, Lcom/stericson/rootshell/containers/RootClass$AnnotationsFinder$1;->val$fileNamePrefix:Ljava/lang/String;

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    iget-object p1, p0, Lcom/stericson/rootshell/containers/RootClass$AnnotationsFinder$1;->val$fileNamePrefix:Ljava/lang/String;

    .line 195
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
