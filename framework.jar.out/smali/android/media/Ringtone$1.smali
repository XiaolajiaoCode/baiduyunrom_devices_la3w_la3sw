.class Landroid/media/Ringtone$1;
.super Ljava/lang/Object;
.source "Ringtone.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/Ringtone;->setUri(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/Ringtone;


# direct methods
.method constructor <init>(Landroid/media/Ringtone;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Landroid/media/Ringtone$1;->this$0:Landroid/media/Ringtone;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 199
    iget-object v0, p0, Landroid/media/Ringtone$1;->this$0:Landroid/media/Ringtone;

    #getter for: Landroid/media/Ringtone;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Landroid/media/Ringtone;->access$100(Landroid/media/Ringtone;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Landroid/media/Ringtone$1;->this$0:Landroid/media/Ringtone;

    #getter for: Landroid/media/Ringtone;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;
    invoke-static {v1}, Landroid/media/Ringtone;->access$000(Landroid/media/Ringtone;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 200
    return-void
.end method
