import { registerPlugin } from '@capacitor/core';
import { ContactsPluginPlugin } from './definitions';

export * from './definitions';

export const ContactsPlugin = registerPlugin<ContactsPluginPlugin>('ContactsPlugin', {
  web: () => import('./web').then(m => new m.ContactsPluginWeb()),
});
