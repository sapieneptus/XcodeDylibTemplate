# Entitlement Injector Plugin for Calabash

This is a plugin that allows you to inject or replace entitlement IDs (such as app group IDs) into a compiled application. 

Currently it only supports app group IDs, unclear if other entitlements will even need this approach. 

To use this plugin you need to place a plist file `XTCEntitlementsMeta.plist` into the app bundle (and any app extension app bundles). The plist contains a mapping from customer app group ids to our app group ids that you'd like rewritten:

```
{
 AppGroupIDs : {
 <customer group_id 1> =>  <xtc group_id 1>
 <customer group_id 2> =>  <xtc group_id 2>
 <etc...>
 },
 <OtherEntitlementKey> : <OtherEntitlementValue>
}
```

Also place the dylib into the root of the app bundle (and in any app extension ) and resign the app. 

*Hint*: You can use the `ios-cli` tool to inject the dylib and automatically generate the `XTCEntitlementsMeta.plist` files needed and resign. Note that the dylib is only auto loaded if the Calabash server is present (in a newer version).

## Building

Cmd-B in Xcode

Use `./build.sh` to build a universal dylib which can be dumped into any arm app bunde.

## Finding

In Xcode, Right-click Products > EntitlementInjectorCalabash.dylib => Show in Finder

`./build.sh` uses the `./build` folder in the root of the project.



