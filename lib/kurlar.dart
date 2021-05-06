// To parse this JSON data, do
//
//     final currency = currencyFromJson(jsonString);

import 'dart:convert';

Currency currencyFromJson(String str) => Currency.fromJson(json.decode(str));

String currencyToJson(Currency data) => json.encode(data.toJson());

class Currency {
  Currency({
    this.updateDate,
    this.usd,
    this.eur,
    this.gbp,
    this.chf,
    this.cad,
    this.rub,
    this.aed,
    this.aud,
    this.dkk,
    this.sek,
    this.nok,
    this.jpy,
    this.kwd,
    this.zar,
    this.bhd,
    this.lyd,
    this.sar,
    this.iqd,
    this.ils,
    this.irr,
    this.inr,
    this.mxn,
    this.huf,
    this.nzd,
    this.brl,
    this.idr,
    this.csk,
    this.pln,
    this.ron,
    this.cny,
    this.ars,
    this.all,
    this.azn,
    this.bam,
    this.clp,
    this.cop,
    this.crc,
    this.dzd,
    this.egp,
    this.hkd,
    this.hrk,
    this.isk,
    this.jod,
    this.krw,
    this.kzt,
    this.lbp,
    this.lkr,
    this.mad,
    this.mdl,
    this.mkd,
    this.myr,
    this.omr,
    this.pen,
    this.php,
    this.pkr,
    this.qar,
    this.rsd,
    this.sgd,
    this.syp,
    this.thb,
    this.twd,
    this.uah,
    this.uyu,
    this.gel,
    this.tnd,
    this.bgn,
    this.ons,
    this.gramAltin,
    this.ceyrekAltin,
    this.yarimAltin,
    this.tamAltin,
    this.cumhuriyetAltini,
    this.ataAltin,
    this.resatAltin,
    this.hamitAltin,
    this.ikibucukAltin,
    this.gremseAltin,
    this.besliAltin,
    this.the14AyarAltin,
    this.the18AyarAltin,
    this.the22AyarBilezik,
    this.gumus,
  });

  DateTime updateDate;
  The14AyarAltin usd;
  The14AyarAltin eur;
  The14AyarAltin gbp;
  The14AyarAltin chf;
  The14AyarAltin cad;
  The14AyarAltin rub;
  The14AyarAltin aed;
  The14AyarAltin aud;
  The14AyarAltin dkk;
  The14AyarAltin sek;
  The14AyarAltin nok;
  The14AyarAltin jpy;
  The14AyarAltin kwd;
  The14AyarAltin zar;
  The14AyarAltin bhd;
  The14AyarAltin lyd;
  The14AyarAltin sar;
  The14AyarAltin iqd;
  The14AyarAltin ils;
  The14AyarAltin irr;
  The14AyarAltin inr;
  The14AyarAltin mxn;
  The14AyarAltin huf;
  The14AyarAltin nzd;
  The14AyarAltin brl;
  The14AyarAltin idr;
  The14AyarAltin csk;
  The14AyarAltin pln;
  The14AyarAltin ron;
  The14AyarAltin cny;
  The14AyarAltin ars;
  The14AyarAltin all;
  The14AyarAltin azn;
  The14AyarAltin bam;
  The14AyarAltin clp;
  The14AyarAltin cop;
  The14AyarAltin crc;
  The14AyarAltin dzd;
  The14AyarAltin egp;
  The14AyarAltin hkd;
  The14AyarAltin hrk;
  The14AyarAltin isk;
  The14AyarAltin jod;
  The14AyarAltin krw;
  The14AyarAltin kzt;
  The14AyarAltin lbp;
  The14AyarAltin lkr;
  The14AyarAltin mad;
  The14AyarAltin mdl;
  The14AyarAltin mkd;
  The14AyarAltin myr;
  The14AyarAltin omr;
  The14AyarAltin pen;
  The14AyarAltin php;
  The14AyarAltin pkr;
  The14AyarAltin qar;
  The14AyarAltin rsd;
  The14AyarAltin sgd;
  The14AyarAltin syp;
  The14AyarAltin thb;
  The14AyarAltin twd;
  The14AyarAltin uah;
  The14AyarAltin uyu;
  The14AyarAltin gel;
  The14AyarAltin tnd;
  The14AyarAltin bgn;
  The14AyarAltin ons;
  The14AyarAltin gramAltin;
  The14AyarAltin ceyrekAltin;
  The14AyarAltin yarimAltin;
  The14AyarAltin tamAltin;
  The14AyarAltin cumhuriyetAltini;
  The14AyarAltin ataAltin;
  The14AyarAltin resatAltin;
  The14AyarAltin hamitAltin;
  The14AyarAltin ikibucukAltin;
  The14AyarAltin gremseAltin;
  The14AyarAltin besliAltin;
  The14AyarAltin the14AyarAltin;
  The14AyarAltin the18AyarAltin;
  The14AyarAltin the22AyarBilezik;
  The14AyarAltin gumus;

  factory Currency.fromJson(Map<String, dynamic> json) => Currency(
        updateDate: json["Update_Date"] == null
            ? null
            : DateTime.parse(json["Update_Date"]),
        usd: json["USD"] == null ? null : The14AyarAltin.fromJson(json["USD"]),
        eur: json["EUR"] == null ? null : The14AyarAltin.fromJson(json["EUR"]),
        gbp: json["GBP"] == null ? null : The14AyarAltin.fromJson(json["GBP"]),
        chf: json["CHF"] == null ? null : The14AyarAltin.fromJson(json["CHF"]),
        cad: json["CAD"] == null ? null : The14AyarAltin.fromJson(json["CAD"]),
        rub: json["RUB"] == null ? null : The14AyarAltin.fromJson(json["RUB"]),
        aed: json["AED"] == null ? null : The14AyarAltin.fromJson(json["AED"]),
        aud: json["AUD"] == null ? null : The14AyarAltin.fromJson(json["AUD"]),
        dkk: json["DKK"] == null ? null : The14AyarAltin.fromJson(json["DKK"]),
        sek: json["SEK"] == null ? null : The14AyarAltin.fromJson(json["SEK"]),
        nok: json["NOK"] == null ? null : The14AyarAltin.fromJson(json["NOK"]),
        jpy: json["JPY"] == null ? null : The14AyarAltin.fromJson(json["JPY"]),
        kwd: json["KWD"] == null ? null : The14AyarAltin.fromJson(json["KWD"]),
        zar: json["ZAR"] == null ? null : The14AyarAltin.fromJson(json["ZAR"]),
        bhd: json["BHD"] == null ? null : The14AyarAltin.fromJson(json["BHD"]),
        lyd: json["LYD"] == null ? null : The14AyarAltin.fromJson(json["LYD"]),
        sar: json["SAR"] == null ? null : The14AyarAltin.fromJson(json["SAR"]),
        iqd: json["IQD"] == null ? null : The14AyarAltin.fromJson(json["IQD"]),
        ils: json["ILS"] == null ? null : The14AyarAltin.fromJson(json["ILS"]),
        irr: json["IRR"] == null ? null : The14AyarAltin.fromJson(json["IRR"]),
        inr: json["INR"] == null ? null : The14AyarAltin.fromJson(json["INR"]),
        mxn: json["MXN"] == null ? null : The14AyarAltin.fromJson(json["MXN"]),
        huf: json["HUF"] == null ? null : The14AyarAltin.fromJson(json["HUF"]),
        nzd: json["NZD"] == null ? null : The14AyarAltin.fromJson(json["NZD"]),
        brl: json["BRL"] == null ? null : The14AyarAltin.fromJson(json["BRL"]),
        idr: json["IDR"] == null ? null : The14AyarAltin.fromJson(json["IDR"]),
        csk: json["CSK"] == null ? null : The14AyarAltin.fromJson(json["CSK"]),
        pln: json["PLN"] == null ? null : The14AyarAltin.fromJson(json["PLN"]),
        ron: json["RON"] == null ? null : The14AyarAltin.fromJson(json["RON"]),
        cny: json["CNY"] == null ? null : The14AyarAltin.fromJson(json["CNY"]),
        ars: json["ARS"] == null ? null : The14AyarAltin.fromJson(json["ARS"]),
        all: json["ALL"] == null ? null : The14AyarAltin.fromJson(json["ALL"]),
        azn: json["AZN"] == null ? null : The14AyarAltin.fromJson(json["AZN"]),
        bam: json["BAM"] == null ? null : The14AyarAltin.fromJson(json["BAM"]),
        clp: json["CLP"] == null ? null : The14AyarAltin.fromJson(json["CLP"]),
        cop: json["COP"] == null ? null : The14AyarAltin.fromJson(json["COP"]),
        crc: json["CRC"] == null ? null : The14AyarAltin.fromJson(json["CRC"]),
        dzd: json["DZD"] == null ? null : The14AyarAltin.fromJson(json["DZD"]),
        egp: json["EGP"] == null ? null : The14AyarAltin.fromJson(json["EGP"]),
        hkd: json["HKD"] == null ? null : The14AyarAltin.fromJson(json["HKD"]),
        hrk: json["HRK"] == null ? null : The14AyarAltin.fromJson(json["HRK"]),
        isk: json["ISK"] == null ? null : The14AyarAltin.fromJson(json["ISK"]),
        jod: json["JOD"] == null ? null : The14AyarAltin.fromJson(json["JOD"]),
        krw: json["KRW"] == null ? null : The14AyarAltin.fromJson(json["KRW"]),
        kzt: json["KZT"] == null ? null : The14AyarAltin.fromJson(json["KZT"]),
        lbp: json["LBP"] == null ? null : The14AyarAltin.fromJson(json["LBP"]),
        lkr: json["LKR"] == null ? null : The14AyarAltin.fromJson(json["LKR"]),
        mad: json["MAD"] == null ? null : The14AyarAltin.fromJson(json["MAD"]),
        mdl: json["MDL"] == null ? null : The14AyarAltin.fromJson(json["MDL"]),
        mkd: json["MKD"] == null ? null : The14AyarAltin.fromJson(json["MKD"]),
        myr: json["MYR"] == null ? null : The14AyarAltin.fromJson(json["MYR"]),
        omr: json["OMR"] == null ? null : The14AyarAltin.fromJson(json["OMR"]),
        pen: json["PEN"] == null ? null : The14AyarAltin.fromJson(json["PEN"]),
        php: json["PHP"] == null ? null : The14AyarAltin.fromJson(json["PHP"]),
        pkr: json["PKR"] == null ? null : The14AyarAltin.fromJson(json["PKR"]),
        qar: json["QAR"] == null ? null : The14AyarAltin.fromJson(json["QAR"]),
        rsd: json["RSD"] == null ? null : The14AyarAltin.fromJson(json["RSD"]),
        sgd: json["SGD"] == null ? null : The14AyarAltin.fromJson(json["SGD"]),
        syp: json["SYP"] == null ? null : The14AyarAltin.fromJson(json["SYP"]),
        thb: json["THB"] == null ? null : The14AyarAltin.fromJson(json["THB"]),
        twd: json["TWD"] == null ? null : The14AyarAltin.fromJson(json["TWD"]),
        uah: json["UAH"] == null ? null : The14AyarAltin.fromJson(json["UAH"]),
        uyu: json["UYU"] == null ? null : The14AyarAltin.fromJson(json["UYU"]),
        gel: json["GEL"] == null ? null : The14AyarAltin.fromJson(json["GEL"]),
        tnd: json["TND"] == null ? null : The14AyarAltin.fromJson(json["TND"]),
        bgn: json["BGN"] == null ? null : The14AyarAltin.fromJson(json["BGN"]),
        ons: json["ons"] == null ? null : The14AyarAltin.fromJson(json["ons"]),
        gramAltin: json["gram-altin"] == null
            ? null
            : The14AyarAltin.fromJson(json["gram-altin"]),
        ceyrekAltin: json["ceyrek-altin"] == null
            ? null
            : The14AyarAltin.fromJson(json["ceyrek-altin"]),
        yarimAltin: json["yarim-altin"] == null
            ? null
            : The14AyarAltin.fromJson(json["yarim-altin"]),
        tamAltin: json["tam-altin"] == null
            ? null
            : The14AyarAltin.fromJson(json["tam-altin"]),
        cumhuriyetAltini: json["cumhuriyet-altini"] == null
            ? null
            : The14AyarAltin.fromJson(json["cumhuriyet-altini"]),
        ataAltin: json["ata-altin"] == null
            ? null
            : The14AyarAltin.fromJson(json["ata-altin"]),
        resatAltin: json["resat-altin"] == null
            ? null
            : The14AyarAltin.fromJson(json["resat-altin"]),
        hamitAltin: json["hamit-altin"] == null
            ? null
            : The14AyarAltin.fromJson(json["hamit-altin"]),
        ikibucukAltin: json["ikibucuk-altin"] == null
            ? null
            : The14AyarAltin.fromJson(json["ikibucuk-altin"]),
        gremseAltin: json["gremse-altin"] == null
            ? null
            : The14AyarAltin.fromJson(json["gremse-altin"]),
        besliAltin: json["besli-altin"] == null
            ? null
            : The14AyarAltin.fromJson(json["besli-altin"]),
        the14AyarAltin: json["14-ayar-altin"] == null
            ? null
            : The14AyarAltin.fromJson(json["14-ayar-altin"]),
        the18AyarAltin: json["18-ayar-altin"] == null
            ? null
            : The14AyarAltin.fromJson(json["18-ayar-altin"]),
        the22AyarBilezik: json["22-ayar-bilezik"] == null
            ? null
            : The14AyarAltin.fromJson(json["22-ayar-bilezik"]),
        gumus: json["gumus"] == null
            ? null
            : The14AyarAltin.fromJson(json["gumus"]),
      );

  Map<String, dynamic> toJson() => {
        "Update_Date": updateDate == null ? null : updateDate.toIso8601String(),
        "USD": usd == null ? null : usd.toJson(),
        "EUR": eur == null ? null : eur.toJson(),
        "GBP": gbp == null ? null : gbp.toJson(),
        "CHF": chf == null ? null : chf.toJson(),
        "CAD": cad == null ? null : cad.toJson(),
        "RUB": rub == null ? null : rub.toJson(),
        "AED": aed == null ? null : aed.toJson(),
        "AUD": aud == null ? null : aud.toJson(),
        "DKK": dkk == null ? null : dkk.toJson(),
        "SEK": sek == null ? null : sek.toJson(),
        "NOK": nok == null ? null : nok.toJson(),
        "JPY": jpy == null ? null : jpy.toJson(),
        "KWD": kwd == null ? null : kwd.toJson(),
        "ZAR": zar == null ? null : zar.toJson(),
        "BHD": bhd == null ? null : bhd.toJson(),
        "LYD": lyd == null ? null : lyd.toJson(),
        "SAR": sar == null ? null : sar.toJson(),
        "IQD": iqd == null ? null : iqd.toJson(),
        "ILS": ils == null ? null : ils.toJson(),
        "IRR": irr == null ? null : irr.toJson(),
        "INR": inr == null ? null : inr.toJson(),
        "MXN": mxn == null ? null : mxn.toJson(),
        "HUF": huf == null ? null : huf.toJson(),
        "NZD": nzd == null ? null : nzd.toJson(),
        "BRL": brl == null ? null : brl.toJson(),
        "IDR": idr == null ? null : idr.toJson(),
        "CSK": csk == null ? null : csk.toJson(),
        "PLN": pln == null ? null : pln.toJson(),
        "RON": ron == null ? null : ron.toJson(),
        "CNY": cny == null ? null : cny.toJson(),
        "ARS": ars == null ? null : ars.toJson(),
        "ALL": all == null ? null : all.toJson(),
        "AZN": azn == null ? null : azn.toJson(),
        "BAM": bam == null ? null : bam.toJson(),
        "CLP": clp == null ? null : clp.toJson(),
        "COP": cop == null ? null : cop.toJson(),
        "CRC": crc == null ? null : crc.toJson(),
        "DZD": dzd == null ? null : dzd.toJson(),
        "EGP": egp == null ? null : egp.toJson(),
        "HKD": hkd == null ? null : hkd.toJson(),
        "HRK": hrk == null ? null : hrk.toJson(),
        "ISK": isk == null ? null : isk.toJson(),
        "JOD": jod == null ? null : jod.toJson(),
        "KRW": krw == null ? null : krw.toJson(),
        "KZT": kzt == null ? null : kzt.toJson(),
        "LBP": lbp == null ? null : lbp.toJson(),
        "LKR": lkr == null ? null : lkr.toJson(),
        "MAD": mad == null ? null : mad.toJson(),
        "MDL": mdl == null ? null : mdl.toJson(),
        "MKD": mkd == null ? null : mkd.toJson(),
        "MYR": myr == null ? null : myr.toJson(),
        "OMR": omr == null ? null : omr.toJson(),
        "PEN": pen == null ? null : pen.toJson(),
        "PHP": php == null ? null : php.toJson(),
        "PKR": pkr == null ? null : pkr.toJson(),
        "QAR": qar == null ? null : qar.toJson(),
        "RSD": rsd == null ? null : rsd.toJson(),
        "SGD": sgd == null ? null : sgd.toJson(),
        "SYP": syp == null ? null : syp.toJson(),
        "THB": thb == null ? null : thb.toJson(),
        "TWD": twd == null ? null : twd.toJson(),
        "UAH": uah == null ? null : uah.toJson(),
        "UYU": uyu == null ? null : uyu.toJson(),
        "GEL": gel == null ? null : gel.toJson(),
        "TND": tnd == null ? null : tnd.toJson(),
        "BGN": bgn == null ? null : bgn.toJson(),
        "ons": ons == null ? null : ons.toJson(),
        "gram-altin": gramAltin == null ? null : gramAltin.toJson(),
        "ceyrek-altin": ceyrekAltin == null ? null : ceyrekAltin.toJson(),
        "yarim-altin": yarimAltin == null ? null : yarimAltin.toJson(),
        "tam-altin": tamAltin == null ? null : tamAltin.toJson(),
        "cumhuriyet-altini":
            cumhuriyetAltini == null ? null : cumhuriyetAltini.toJson(),
        "ata-altin": ataAltin == null ? null : ataAltin.toJson(),
        "resat-altin": resatAltin == null ? null : resatAltin.toJson(),
        "hamit-altin": hamitAltin == null ? null : hamitAltin.toJson(),
        "ikibucuk-altin": ikibucukAltin == null ? null : ikibucukAltin.toJson(),
        "gremse-altin": gremseAltin == null ? null : gremseAltin.toJson(),
        "besli-altin": besliAltin == null ? null : besliAltin.toJson(),
        "14-ayar-altin":
            the14AyarAltin == null ? null : the14AyarAltin.toJson(),
        "18-ayar-altin":
            the18AyarAltin == null ? null : the18AyarAltin.toJson(),
        "22-ayar-bilezik":
            the22AyarBilezik == null ? null : the22AyarBilezik.toJson(),
        "gumus": gumus == null ? null : gumus.toJson(),
      };
}

class The14AyarAltin {
  The14AyarAltin({
    this.al,
    this.tr,
    this.sat,
    this.deiim,
  });

  String al;
  Tr tr;
  String sat;
  String deiim;

  factory The14AyarAltin.fromJson(Map<String, dynamic> json) => The14AyarAltin(
        al: json["Alış"] == null ? null : json["Alış"],
        tr: json["Tür"] == null ? null : trValues.map[json["Tür"]],
        sat: json["Satış"] == null ? null : json["Satış"],
        deiim: json["Değişim"] == null ? null : json["Değişim"],
      );

  Map<String, dynamic> toJson() => {
        "Alış": al == null ? null : al,
        "Tür": tr == null ? null : trValues.reverse[tr],
        "Satış": sat == null ? null : sat,
        "Değişim": deiim == null ? null : deiim,
      };
}

enum Tr { ALTN, DVIZ }

final trValues = EnumValues({"Altın": Tr.ALTN, "Döviz": Tr.DVIZ});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
