import { WebPlugin } from '@capacitor/core';
import { ContactsPluginPlugin } from './definitions';

export class ContactsPluginWeb extends WebPlugin implements ContactsPluginPlugin {
  constructor() {
    super();
  }

  async echo(options: { value: string }): Promise<{ value: string }> {
    return { value: options.value };
  }

  async showHelloWorld(): Promise<void> {
    console.log("web.ts");
  }
}

const ContactsPlugin = new ContactsPluginWeb();

export { ContactsPlugin };
