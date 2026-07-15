declare module '@apiverve/whoislookup' {
  export interface whoislookupOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface whoislookupResponse {
    status: string;
    error: string | null;
    data: WHOISLookupData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface WHOISLookupData {
      domainName:                 null | string;
      registryDomainID:           null | string;
      createdDate:                Date | null;
      expiryDate:                 Date | null;
      updatedDate:                Date | null;
      domainStatus:               (null | string)[];
      dNSSEC:                     null | string;
      registrar:                  null | string;
      registrarIANAID:            null | string;
      registrarURL:               null | string;
      registrarAbuseContactEmail: null | string;
      registrarAbuseContactPhone: null | string;
      nameServers:                (null | string)[];
      domain:                     null | string;
      fetchedAtUTC:               Date | null;
      tld:                        null | string;
      status:                     null | string;
      domainAgeDays:              number | null;
      domainAgeYears:             number | null;
      isRecentlyRegistered:       boolean | null;
      trustScore:                 number | null;
      trustLevel:                 null | string;
  }

  export default class whoislookupWrapper {
    constructor(options: whoislookupOptions);

    execute(callback: (error: any, data: whoislookupResponse | null) => void): Promise<whoislookupResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: whoislookupResponse | null) => void): Promise<whoislookupResponse>;
    execute(query?: Record<string, any>): Promise<whoislookupResponse>;
  }
}
