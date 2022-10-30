type Istrings = string | string[] | undefined;

export default interface Idb {
  type: string;
  table: string;
  field?: Istrings;
  value?: Istrings;
  set?: Istrings;
  where?: Istrings;
  order?: Istrings;
  limit?: number;
}
