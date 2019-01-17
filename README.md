# Object Communication

## Delegate 

* Great for one object to communicate with another object without knowing about that object.
* Sometimes we want to be able to communicate with or notify multiple objects.

## NSNotificationCenter

* Allows us to broadcast information for any other objects to receive.
* A mountain could broadcast snow conditions to any object that wants to receive information about conditions.

## KVO (Key Value Observer)

* Observe another object's properties and receive notifications when the property changes.
* A mountain could have a snow level property that other objects could observe without the mountain knowing.


## Controls `target-action`

## Touches

## Gestures



## Code Snippets

NSTimer:

```obj-c
[NSTimer scheduledTimerWithTimeInterval:1.0 repeats:YES block:^(NSTimer * _Nonnull timer) {
```

NSNotification Center:

```obj-c
NSNotification *notification = [NSNotification notificationWithName:@"notification-name" object:self];
[[NSNotificationCenter defaultCenter] postNotification:timerUpdatedNotification];
```

```obj-c
[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(notificationHappend:) name:@"notification-name" object:nil];
```

KVO:

```obj-c
[someObject addObserver:self forKeyPath:@"seconds" options:0 context:nil];
```

```obj-c
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context
```

Gesture:

```
velocityInView
translationInView
setTranslation
sender.view.transform = CGAffineTransformMakeScale(sender.scale, sender.scale);
```

* https://developer.apple.com/documentation/uikit/uipangesturerecognizer/1621207-translationinview