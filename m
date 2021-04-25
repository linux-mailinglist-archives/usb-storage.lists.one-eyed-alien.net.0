Return-Path: <usb-storage+bncBDBMLTW6VQDRBDV3SWCAMGQE5RLY3KY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wr1-x448.google.com (mail-wr1-x448.google.com [IPv6:2a00:1450:4864:20::448])
	by mail.lfdr.de (Postfix) with ESMTPS id 117C336A713
	for <lists+usb-storage@lfdr.de>; Sun, 25 Apr 2021 14:16:15 +0200 (CEST)
Received: by mail-wr1-x448.google.com with SMTP id 91-20020adf94640000b029010b019075afsf643483wrq.17
        for <lists+usb-storage@lfdr.de>; Sun, 25 Apr 2021 05:16:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619352974; cv=pass;
        d=google.com; s=arc-20160816;
        b=i9VS9cBrYKBwdBTYg9F02gk2wHyomjQs0I9dmCMUrMqjJe41UBMkqmS9+4EofyuaQE
         8YqUeRce/btHq7KgWzD40dJ55G3VIaziateQI2GGcfPXs2pW3T4xx6gsaroCP2SCuG8G
         FDQAvq6PQ74P0ItdDd2XKsCuwqJJ9zUbPe3ej485hjbjQPEdG03HP2FV28GsOPdWTj1s
         62YX8ZHhgKQjhNXnoDGo/tNpZpOy5VqpW0ZozxyLl6PL2Xv3PaDEzLIxJa78DqvSc52P
         2BLhXD+IzewPTFaFPky8XWsQ1D+wDlJwLjkRureZZuuXdCcagsj82kmntZLdEs7i0P++
         U2CQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:from:subject:cc:to:message-id
         :date:sender:dkim-signature;
        bh=369UzSjw7UyhX1fYKyuRR54OOq1AGu5w6CUINys1Smg=;
        b=nrXWQS72TckZ+DRkYaN5nJ+bS42GLlM8EABpShpt8WTuSTfk0q5hDT0xY2eENJfFjO
         3WuaFGb3rpSc8V9pfQjcXpurm+GJXO9v3dcoLSnYobiH6v1xQX0pKN22EMAMuzd8+sC6
         NSvCUl5nxMyH2UQvp+IRSapdJTksXGf/jb9/Yjhqw8z/0vriHTdujfYnsydw2dtdm2Uc
         a5pVogSHT0yw6dk7TGatOZXn3mAft8eC/9wB9I415GRGusGhQhA4BfIqL1zuGtryWrZb
         fkk+jsT0WmcaY8fQleX7K6KQO9HNbEu+QLnB8Ns55wXDU3Dnw2tHeSRJkB39LBj5xJ1i
         E4xQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@exactco.de header.s=x header.b=YqEVQ2Oc;
       spf=pass (google.com: domain of rene@exactcode.com designates 144.76.154.42 as permitted sender) smtp.mailfrom=rene@exactcode.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:message-id:to:cc:subject:from:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=369UzSjw7UyhX1fYKyuRR54OOq1AGu5w6CUINys1Smg=;
        b=K7TxnngbYHk2UP4/YjmXV/xdsSSSJAEm648DpCrJjtdljZNG2KhF7fjWKzvjJCUsWV
         G0tRu8XL5pGss6L4cAHHqTFa7nHK1P6McJH/scF9RayBgLZ90QiVKch2TbTmKU21F8cE
         v0nyoKa3PoiSVSWSY+0HNA2jxrhw9Qd0d5dKI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:message-id:to:cc:subject:from
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=369UzSjw7UyhX1fYKyuRR54OOq1AGu5w6CUINys1Smg=;
        b=rqzzaWHDtXlDMWT0OqsqlBH+XixoMR03XQQ2BRXD6/5OjIaYL2Yp9f9bHgk0N24O0l
         NTqlnUYTpxGvioeppp9G1+0T0m0nzry6HhF7u/n1BMOkbaanzDZ24YM53YYbrFNw8DUV
         KARSt7FtDLOntUuhOrLWVKAj34TTFCfoz5vlD3FDHF4a74jJAHwJUKM2Aeb1CDpwhDCy
         Dg6bpHbOpI8pl06Au00qPDnv1DaPzXt4EThf3ZfDAacVOwPYJN7Rgpx5gxSg94rqQ5a8
         A8i6MMLVrXCjkmcYDYeIOiGn56vO7syMdSTjWLlubDi9nn/qQ1KhUowoqIBS8foJ7Wur
         VS2w==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM532ih56ZsGMs6BulW+zJJnvds0Y5MO/xcTPkpLjNBkSKEkOA/1ys
	Gfg7yK6+UPDvcbpgEfcTxLsdsg==
X-Google-Smtp-Source: ABdhPJzA5Uo4IsEyBf2U7CQwfKtk0/efBKyQfnwHYHk8j32FFsAtDZqOoTOdJgHNHUiNywNjvVqsNw==
X-Received: by 2002:a1c:9853:: with SMTP id a80mr13998579wme.44.1619352974795;
        Sun, 25 Apr 2021 05:16:14 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:adf:d1e5:: with SMTP id g5ls4942757wrd.1.gmail; Sun, 25 Apr
 2021 05:16:13 -0700 (PDT)
X-Received: by 2002:adf:bbd2:: with SMTP id z18mr16670077wrg.274.1619352973678;
        Sun, 25 Apr 2021 05:16:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619352973; cv=none;
        d=google.com; s=arc-20160816;
        b=s3iWF9u9fUJqXbCSHAdqmiDP13jtisS/MPdep5i4JE8Tz/MjaPZKjp+LhRpwxXJk14
         GuMQo8Seu0jkTXWY7/hm7XalRmApk5D5RVAVEkLcWjj8ihL8Y8swwvBHTHbtDq4Ye35A
         WtNMo5PMaKmPuAELWuV72WCSUR/bAJ23MG4u+7cKVAFDYS5hbPGhFc0lgVZ1GfgN7/PC
         fsvZIK3a6amTDfMOTYG1ZXg32mc+LafDKmAxAXDGwP3pMvFcVQRPL8c2tFFUIWwOpmPS
         6v24o8NDMSu5ptDlsIUX9DSuD2z3lN+TAOaQr1S6DFOB7wXYN2YlH6jujpJcCD9MmX5W
         swdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:from
         :subject:cc:to:message-id:date:dkim-signature;
        bh=369UzSjw7UyhX1fYKyuRR54OOq1AGu5w6CUINys1Smg=;
        b=MOFa1Ht5nVUtaOuzmisI3ALvgIdV1jA4qh+atMlqfFQ6Wr+ouYLwEJ90TTKlg1uQKN
         l/nEQyMsnTKILAZoSELw7iLZmE3xkRgMtplyA71bsfe0GiwO+tyoDKXlbaIygj5Ffx8Z
         0dO42GGa07HEsptnsmSjXR+67hG9qQ45QwlRqjwdENMTeobYbKfVZnyAijwJhoMczxVr
         e9K7qh+zGjfnjPvjzEu5U1M1aXmzdyR0WPpg2Bjqbw0wbWCYc+fAr/AQNpWaaU7uhrvJ
         aBgBbsDcjhDw73wnBOUC8H87vFMOA1U7W8vy2JifsHYn2f+4S2ijRV81WAf7lBLNCTg3
         Hb3w==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@exactco.de header.s=x header.b=YqEVQ2Oc;
       spf=pass (google.com: domain of rene@exactcode.com designates 144.76.154.42 as permitted sender) smtp.mailfrom=rene@exactcode.com
Received: from mx.exactcode.de (mx.exactcode.de. [144.76.154.42])
        by mx.google.com with ESMTPS id s1si1065724wrp.221.2021.04.25.05.16.13
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Apr 2021 05:16:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of rene@exactcode.com designates 144.76.154.42 as permitted sender) client-ip=144.76.154.42;
Received: from exactco.de ([90.187.5.221])
	by mx.exactcode.de with esmtp (Exim 4.82)
	(envelope-from <rene@exactcode.com>)
	id 1ladgQ-000387-S8; Sun, 25 Apr 2021 12:16:19 +0000
Received: from [192.168.2.131] (helo=localhost)
	by exactco.de with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.86_2)
	(envelope-from <rene@exactcode.com>)
	id 1ladck-0004ll-HN; Sun, 25 Apr 2021 12:12:31 +0000
Date: Sun, 25 Apr 2021 14:15:36 +0200 (CEST)
Message-Id: <20210425.141536.1295354861910527121.rene@exactcode.com>
To: gregkh@linuxfoundation.org
Cc: hdegoede@redhat.com, stern@rowland.harvard.edu,
 linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH] unbreak all modern Seagate ATA pass-through
 for SMART
From: Rene Rebe <rene@exactcode.com>
In-Reply-To: <YIVZ2l9qUfkcyPpG@kroah.com>
References: <ee48ea5d-c820-ae24-b557-2a7b7372821c@redhat.com>
	<20210425.135048.1651130854722875318.rene@exactcode.com>
	<YIVZ2l9qUfkcyPpG@kroah.com>
X-Mailer: Mew version 6.8 on Emacs 27.1
Mime-Version: 1.0
Content-Type: Text/Plain; charset=utf-8
Content-Transfer-Encoding: base64
X-Spam-Score: -0.5 (/)
X-Original-Sender: rene@exactcode.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@exactco.de header.s=x header.b=YqEVQ2Oc;       spf=pass
 (google.com: domain of rene@exactcode.com designates 144.76.154.42 as
 permitted sender) smtp.mailfrom=rene@exactcode.com
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
X-Spam-Checked-In-Group: usb-storage@lists.one-eyed-alien.net
X-Google-Group-Id: 960895140360
List-Post: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/post>,
 <mailto:usb-storage@lists.one-eyed-alien.net>
List-Help: <https://support.google.com/a/lists.one-eyed-alien.net/bin/topic.py?topic=25838>,
 <mailto:usb-storage+help@lists.one-eyed-alien.net>
List-Archive: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/>
List-Subscribe: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>,
 <mailto:usb-storage+subscribe@lists.one-eyed-alien.net>
List-Unsubscribe: <mailto:googlegroups-manage+960895140360+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>

RnJvbTogR3JlZyBLSCA8Z3JlZ2toQGxpbnV4Zm91bmRhdGlvbi5vcmc+DQpTdWJqZWN0OiBSZTog
W1BBVENIXSB1bmJyZWFrIGFsbCBtb2Rlcm4gU2VhZ2F0ZSBBVEEgcGFzcy10aHJvdWdoIGZvciBT
TUFSVA0KRGF0ZTogU3VuLCAyNSBBcHIgMjAyMSAxNDowMDoyNiArMDIwMA0KDQo+IE9uIFN1biwg
QXByIDI1LCAyMDIxIGF0IDAxOjUwOjQ4UE0gKzAyMDAsIFJlbmUgUmViZSB3cm90ZToNCj4gPiBG
cm9tOiBIYW5zIGRlIEdvZWRlIDxoZGVnb2VkZUByZWRoYXQuY29tPg0KPiA+IFN1YmplY3Q6IFJl
OiBbUEFUQ0hdIHVuYnJlYWsgYWxsIG1vZGVybiBTZWFnYXRlIEFUQSBwYXNzLXRocm91Z2ggZm9y
IFNNQVJUDQo+ID4gRGF0ZTogU3VuLCAyNSBBcHIgMjAyMSAxMjo1ODo0MCArMDIwMA0KPiA+IA0K
PiA+ID4gSGksDQo+ID4gPiANCj4gPiA+IE9uIDQvMjUvMjEgMTI6NDcgUE0sIEhhbnMgZGUgR29l
ZGUgd3JvdGU6DQo+ID4gPiA+IEhpLA0KPiA+ID4gPiANCj4gPiA+ID4gT24gNC8yNS8yMSAxMjo0
MSBQTSwgUmVuZSBSZWJlIHdyb3RlOg0KPiA+ID4gPj4gR3JlZyBLSCB3cm90ZToNCj4gPiA+ID4+
DQo+ID4gPiA+Pj4gT24gU3VuLCBBcHIgMjUsIDIwMjEgYXQgMDk6MjA6NTlBTSArMDIwMCwgUmVu
w6kgUmViZSB3cm90ZToNCj4gPiA+ID4+Pj4gSGV5LA0KPiA+ID4gPj4+Pg0KPiA+ID4gPj4+Pj4g
T24gMjUuIEFwciAyMDIxLCBhdCAwNDozMSwgQWxhbiBTdGVybiA8c3Rlcm5Acm93bGFuZC5oYXJ2
YXJkLmVkdT4gd3JvdGU6DQo+ID4gPiA+Pj4+Pj4gU2VhZ2F0ZSBkZXZpY2VzIiBpbiAyMDE3LiBB
cHBhcmVudGx5IHNvbWUgZWFybHkgb25lcyB3aGVyZSBidWdneSwgLi4uDQo+ID4gPiA+Pj4+Pj4N
Cj4gPiA+ID4+Pj4+PiBIb3dldmVyLCBmYXN0IGZvcndhcmQgYSBjb3VwbGUgb2YgeWVhcnMgYW5k
IHRoaXMgaXMgbm8gbG9uZ2VyIHRydWUsDQo+ID4gPiA+Pj4+Pj4gdGhpcyBTZWdhdGUgU2V2ZW4g
ZXZlbiBpcyBhbHJlYWR5IGZyb20gMjAxNiwgYW5kIGFwcGFyZW50bHkgZmlyc3QNCj4gPiA+ID4+
Pj4+PiBhdmFpbGFibGUgaW4gMjAxNS4gSSBzdWdnZXN0IHJlbW92aW5nIHRoaXMgcmF0aGVyIGRy
YXN0aWMgZ2xvYmFsDQo+ID4gPiA+Pj4+Pj4gbWVhc3VyZSwgYW5kIGluc3RlYWQgb25seSBhZGQg
dmVyeSBvbGQgYnJva2VuIG9uZXMgd2l0aCBpbmRpdmlkdWFsDQo+ID4gPiA+Pj4+Pj4gcXVpcmtz
LCBzaG91bGQgYW55IG9mIHRoZW0gc3RpbGwgYmUgYWxpdmUgOy0pDQo+ID4gPiA+Pj4+Pj4NCj4g
PiA+ID4+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBSZW7DqSBSZWJlIDxyZW5lQGV4YWN0Y29kZS5jb20+
DQo+ID4gPiA+Pj4+Pj4NCj4gPiA+ID4+Pj4+PiAtLS0gbGludXgtNS4xMS9kcml2ZXJzL3VzYi9z
dG9yYWdlL3Vhcy1kZXRlY3QuaC5iYWNrdXAJMjAyMS0wMy0wNSAxMTozNjowMC41MTc0MjM3MjYg
KzAxMDANCj4gPiA+ID4+Pj4+PiArKysgbGludXgtNS4xMS9kcml2ZXJzL3VzYi9zdG9yYWdlL3Vh
cy1kZXRlY3QuaAkyMDIxLTAzLTA1IDExOjM2OjE2LjM3MzQyNDU0NCArMDEwMA0KPiA+ID4gPj4+
Pj4+IEBAIC0xMTMsOCArMTEzLDQgQEANCj4gPiA+ID4+Pj4+PiAJfQ0KPiA+ID4gPj4+Pj4+DQo+
ID4gPiA+Pj4+Pj4gLQkvKiBBbGwgU2VhZ2F0ZSBkaXNrIGVuY2xvc3VyZXMgaGF2ZSBicm9rZW4g
QVRBIHBhc3MtdGhyb3VnaCBzdXBwb3J0ICovDQo+ID4gPiA+Pj4+Pj4gLQlpZiAobGUxNl90b19j
cHUodWRldi0+ZGVzY3JpcHRvci5pZFZlbmRvcikgPT0gMHgwYmMyKQ0KPiA+ID4gPj4+Pj4+IC0J
CWZsYWdzIHw9IFVTX0ZMX05PX0FUQV8xWDsNCj4gPiA+ID4+Pj4+PiAtDQo+ID4gPiA+Pj4+Pj4g
CXVzYl9zdG9yX2FkanVzdF9xdWlya3ModWRldiwgJmZsYWdzKTsNCj4gPiA+ID4+Pj4+DQo+ID4g
PiA+Pj4+PiBJIGRvbid0IHdhbnQgdG8gZG8gdGhpcyB1bmxlc3MgeW91IGNhbiBzdWdnZXN0IGFu
IGFwcHJvYWNoIHRoYXQgd29uJ3QgDQo+ID4gPiA+Pj4+PiBzdWRkZW5seSBicmVhayBhbGwgdGhv
c2Ugb2xkIGJ1Z2d5IGRyaXZlcy4gIEp1c3QgYmVjYXVzZSB0aGV5IGFyZSBub3cgDQo+ID4gPiA+
Pj4+PiBmaXZlIHllYXJzIG9sZCBvciBtb3JlIGRvZXNuJ3QgbWVhbiB0aGV5IGFyZSBubyBsb25n
ZXIgaW4gdXNlLg0KPiA+ID4gPj4+Pg0KPiA+ID4gPj4+PiBXZWxsLCB3aGF0IGRvIHlvdSBwcm9w
b3NlIHRoZW4/IEEgYWxsb3cgcXVpcmsgZm9yIGFsbCBuZXcgZGV2aWNlcyBnb2luZyBmb3J3YXJk
Pw0KPiA+ID4gPj4+PiBHaXZlbiB0aGF0IHRoZSB1c2VyIHVzdWFsbHkgbmVlZHMgdG8gYWN0aXZl
bHkgcnVuIHNvbWV0aGluZyBsaWtlIHNtYXJ0Y3RsDQo+ID4gPiA+Pj4+IG1hbnVhbGx5IG9uIHRo
ZSBkcml2ZSBJIGRvbuKAmXQgc2VlIHRoYXQgdGhpcyBzaG91bGQgY2F1c2UgdG9vIG1hbnkgaXNz
dWVzLg0KPiA+ID4gPj4+PiBJIGRvbuKAmXQgaGF2ZSBhbnkgbm9uLXN1cHBvcnRpbmcgZGV2aWNl
IC0gY2FuIHdlIG5vdCBqdXN0IGFkZCB0aGVtIHRvIHRoZQ0KPiA+ID4gPj4+PiBxdWlyayBsaXN0
IHdoZW4gc29tZW9uZSByZXBvcnRzIG9uZT8NCj4gPiA+ID4+Pg0KPiA+ID4gPj4+IEhvdyBhYm91
dCBzaW5jZSB5b3Uga25vdyB5b3VyIGRldmljZSB3b3JrcywgeW91IG1ha2UgdGhlIGNoZWNrIGRl
dGVjdA0KPiA+ID4gPj4+IHlvdXIgc3BlY2lmaWMgZGV2aWNlIGFuZCBub3QgYXBwbHkgdGhlIGZs
YWcgdG8gaXQ/ICBZb3Ugc2hvdWxkIGJlIGFibGUNCj4gPiA+ID4+PiB0byBkbyBzbyBiYXNlZCBv
biB0aGUNCj4gPiA+ID4+DQo+ID4gPiA+PiBTdXJlLCB3aGlsZSB0aGF0IGRvZXMgbm90IHJlYWxs
eSBzb2x2ZSB0aGlzIGZvciBhbGwgdGhlIG90aGVyIG5ld2VyDQo+ID4gPiA+PiBTZWFnYXRlIGRy
aXZlcyBvdGhlciB1c2VycyBtaWdodCBoYXZlIGF0IGhvbWUsIGhlcmUgaXMgYSBwYXRjaA0KPiA+
ID4gPj4gY2hlY2tpbmcgZm9yIHRoaXMgb25lIFVTQiBwcm9kdWN0IElELiBJIGhvcGUgdGhhdCBp
cyB3aGF0IHlvdSBtZWFudDoNCj4gPiA+ID4+DQo+ID4gPiA+PiBTaWduZWQtb2ZmLWJ5OiBSZW7D
qSBSZWJlIDxyZW5lQGV4YWN0Y29kZS5jb20+DQo+ID4gPiA+Pg0KPiA+ID4gPj4gLS0tIGxpbnV4
LTUuMTEvZHJpdmVycy91c2Ivc3RvcmFnZS91YXMtZGV0ZWN0LmguYmFja3VwCTIwMjEtMDMtMDUg
MTE6MzY6MDAuNTE3NDIzNzI2ICswMTAwDQo+ID4gPiA+PiArKysgbGludXgtNS4xMS9kcml2ZXJz
L3VzYi9zdG9yYWdlL3Vhcy1kZXRlY3QuaAkyMDIxLTAzLTA1IDExOjM2OjE2LjM3MzQyNDU0NCAr
MDEwMA0KPiA+ID4gPj4gQEAgLTExMyw1ICsxMTMsNiBAQA0KPiA+ID4gPj4gIA0KPiA+ID4gPj4g
IAkvKiBBbGwgU2VhZ2F0ZSBkaXNrIGVuY2xvc3VyZXMgaGF2ZSBicm9rZW4gQVRBIHBhc3MtdGhy
b3VnaCBzdXBwb3J0ICovDQo+ID4gPiA+PiAtCWlmIChsZTE2X3RvX2NwdSh1ZGV2LT5kZXNjcmlw
dG9yLmlkVmVuZG9yKSA9PSAweDBiYzIpDQo+ID4gPiA+PiArCWlmICgobGUxNl90b19jcHUodWRl
di0+ZGVzY3JpcHRvci5pZFZlbmRvcikgPT0gMHgwYmMyKSAmJg0KPiA+ID4gPj4gKwkgICAgKGxl
MTZfdG9fY3B1KHVkZXYtPmRlc2NyaXB0b3IuaWRQcm9kdWN0KSAhPSAweGFiMDMpKQ0KPiA+ID4g
Pj4gIAkJZmxhZ3MgfD0gVVNfRkxfTk9fQVRBXzFYOw0KPiA+ID4gPj4gIA0KPiA+ID4gPj4NCj4g
PiA+ID4gDQo+ID4gPiA+IEFzIEkgaW5kaWNhdGVkIGluIG15IG90aGVyIGVtYWlsIHdoaWNoIGNy
b3NzZWQgd2l0aCB0aGlzIG9uZSwgcGxlYXNlIG1ha2UgdGhpcw0KPiA+ID4gPiBtb3JlIGdlbmVy
aWMsIGFkZCBhIG5ldyBVU19GTF9BVEFfMVhfT0sgZmxhZyBhbmQgbWFrZSB0aGUgYWJvdmUgY29k
ZSBjaGVjayB0aGF0ICsNCj4gPiA+ID4gYWRkIGEgbmV3IHVudXN1YWxfdWFzLmggZW50cnkgZm9y
IHlvdXIgZGV2aWNlIHNldHRpbmcgdGhlIG5ldyBmbGFnLg0KPiA+ID4gPiANCj4gPiA+ID4gTm90
ZSB0aGVyZSBpcyBubyBuZWVkIHRvIGFkZCBzdXBwb3J0IGZvciB0aGUgbmV3IGZsYWcgdG8gdXNi
X3N0b3JfYWRqdXN0X3F1aXJrcygpDQo+ID4gPiA+IGlmIGEgdXNlciBvdmVycmlkZXMgcXVpcmtz
IGZvciBhIGRldmljZSBvbiB0aGUga2VybmVsIGNvbW1hbmRsaW5lIHdpdGhvdXQgc3BlY2lmeWlu
Zw0KPiA+ID4gPiB0aGUgInQiIGZsYWcgdGhlbiB0aGUgVVNfRkxfTk9fQVRBXzFYIGZsYWcgd2ls
bCBhbHJlYWR5IGdldCBjbGVhcmVkLg0KPiA+ID4gPiANCj4gPiA+ID4gSSBkZWxpYmVyYXRlbHkg
cHV0IHRoZToNCj4gPiA+ID4gDQo+ID4gPiA+ICAgICAgICAgaWYgKGxlMTZfdG9fY3B1KHVkZXYt
PmRlc2NyaXB0b3IuaWRWZW5kb3IpID09IDB4MGJjMikNCj4gPiA+ID4gICAgICAgICAgICAgICAg
IGZsYWdzIHw9IFVTX0ZMX05PX0FUQV8xWDsNCj4gPiA+ID4gDQo+ID4gPiA+IGNvZGUgYmVmb3Jl
IHRoZSB1c2Jfc3Rvcl9hZGp1c3RfcXVpcmtzKCkgY2FsbCB0byBhbGxvdyB1c2VycyB0byBvdmVy
cmlkZSB0aGlzDQo+ID4gPiA+IGZyb20gdGhlIGtlcm5lbCBjb21tYW5kbGluZS4NCj4gPiA+IA0K
PiA+ID4gcC5zLg0KPiA+ID4gDQo+ID4gPiBBICJnaXQgbG9nIGRyaXZlcnMvdXNiL3N0b3JhZ2Uv
dW51c3VhbF91YXMuaCIgcXVpY2tseSBmaW5kcyB0aGUgY29tbWl0IHdoaWNoIHJlbW92ZWQgdGhl
DQo+ID4gPiBxdWlya3Mgd2hpY2ggdGhlIGdlbmVyaWMgU2VhZ2F0ZSBjaGVjayByZXBsYWNlcy4g
QXQgdGhhdCB0aW1lIHRoZXJlIHdlcmUgVVNfRkxfTk9fQVRBXzFYDQo+ID4gPiBxdWlya3MgZm9y
ICo5KiBkaWZmZXJlbnQgU2VhZ2F0ZSBtb2RlbHMgcHJlc2VudCBpbiB1bnVzdWFsX3Vhcy5oIGFu
ZCBJIGFzc3VtZSBzb21lb25lDQo+ID4gPiByZXBvcnRpbmcgYSAxMHRoIG1vZGVsIGlzIHdoYXQg
bWFkZSBtZSBnbyBmb3IgdGhlIGp1c3QgZGlzYWJsZSB0aGlzIGZvciBhbGwgU2VhZ2F0ZQ0KPiA+
ID4gZHJpdmVyIG9wdGlvbi4NCj4gPiA+IA0KPiA+ID4gU2VlIGNvbW1pdCA5MjMzNWFkOWU4OTUg
KCJ1YXM6IFJlbW92ZSBVU19GTF9OT19BVEFfMVggdW51c3VhbCBkZXZpY2UgZW50cmllcyBmb3Ig
U2VhZ2F0ZSBkZXZpY2VzIikNCj4gPiA+IA0KPiA+ID4gQWxzbyBJIGRpZCBhIHF1aWNrIHdlYnNl
YXJjaCBmb3IgdGhlICJTZWFnYXRlIFNldmVuIiBhbmQgcmF0aGVyIHRoZW4gdGhlIHVzdWFsIHJl
LXVzYWJsZQ0KPiA+ID4gZHJpdmUtZW5jbG9zdXJlIHdpdGggYSBzdGFuZGFyZCAyLjUiIG9yIDMu
NSIgZHJpdmUgaW4gdGhlcmUsIHRoaXMgc2VlbXMgdG8gYmUgYSBjdXN0b20NCj4gPiA+IG1vZGVs
IHdoZXJlIHRoZSBlbmNsb3N1cmUgaXMgYWN0dWFsbHkgaW50ZWdyYXRlZCBpbnRvIHRoZSBkcml2
ZSB0byBtYWtlIGl0IHNtYWxsZXIuDQo+ID4gPiANCj4gPiA+IFNvIEkgd291bGQgbm90IGJlIHN1
cnByaXNlZCBpZiB0aGlzIGlzIHVzaW5nIGFub3RoZXIgY2hpcHNldCB0aGVuIHRoZWlyIHVzdWFs
IGVuY2xvc3VyZXMsDQo+ID4gPiB3aGljaCB3b3VsZCBleHBsYWluIHdoeSBpdCBkb2VzIGhhdmUg
d29ya2luZyBBVEExeCBwYXNzdGhyb3VnaC4NCj4gPiANCj4gPiBJIHdvdWxkIGV4cGVjdCB0aGF0
IG1vcmUgbW9kZXJuIGRldmljZXMgdG8gd29yay4gVmVuZG9ycyB1c3VhbGx5DQo+ID4gbGluZWFy
bHkgYWxsb2NhdGUgdGhlaXIgcHJvZHVjdCBpZHMgZm9yIG5ldyBkZXZpY2VzLCBhbmQgd2UgY291
bGQNCj4gPiBhbGxvdyBsaXN0IHByb2R1Y3QgaWRzIGhpZ2hlciB0aGFuIHRoaXMgU2V2ZW4gdG8g
dW5icmVhayBtb3JlIG1vZGVybg0KPiA+IGRldmljZXMgYnkgZGVmYXVsdCBhbmQgbGltaXQgdGhl
IGFtb3VudCBvZiBkZXZpY2UgcXVpcmtzIG5lZWRlZD8NCj4gDQo+IFZlbmRvcnMgZG8gbm90IGFs
bG9jYXRlIGRldmljZSBpZHMgdGhhdCB3YXkgYXQgYWxsLCBhcyB0aGVyZSBpcyBubw0KPiByZXF1
aXJlbWVudCB0byBkbyBzby4gIEkga25vdyBvZiBtYW55IHZlbmRvcnMgdGhhdCBzZWVtaW5nbHkg
dXNlIHJhbmRvbQ0KPiB2YWx1ZXMgZnJvbSB0aGVpciBwcm9kdWN0IGlkIHNwYWNlLCBzbyB0aGVy
ZSBpcyBubyBndWFyYW50ZWUgdGhhdCB0aGlzDQo+IHdpbGwgd29yaywgc29ycnkuDQoNCkkgZGlk
IG5vdCBzYXkgaXQgaXMgYSByZXF1aXJlbWVudCwganVzdCB0aGF0IHRoZXkgdXN1YWxseSBkbyBz
cGVha2luZw0Kb2YganVzdCB0aGlzIFNlYWdhdGUgY2FzZS4gV2hhdCBpcyB3cm9uZyB3aXRoIHVz
aW5nIHRoYXQgdG8NCnBvdGVudGlhbGx5IHNpZ25pZmljYW50bHkgY3V0IGRvd24gdGhlIHF1aXJr
IGxpc3Q/DQoNCj4gV2hhdCBpcyB3cm9uZyB3aXRoIGp1c3QgYWxsb3dpbmcgc3BlY2lmaWMgZGV2
aWNlcyB0aGF0IHlvdSBoYXZlIHRlc3RlZA0KPiB3aWxsIHdvcmssIHRvIHRoZSBsaXN0IGluc3Rl
YWQ/ICBUaGF0J3MgdGhlIHNhZmVzdCB3YXkgdG8gaGFuZGxlIHRoaXMuDQoNClRoZSBwcm9ibGVt
IGlzIHRoYXQgb3V0IG9mIHRoZSBib3ggaXQgZG9lcyBub3Qgd29yayBmb3IgdXNlcnMsIGFuZA0K
bm9ybWFsIHVzZXJzIGRvIG5vdCBkaXZlIGludG8gdGhlIGtlcm5lbCBjb2RlIHRvIGZpbmQgb3V0
IGFuZCBzaW1wbHkNCnRoaW5rIHRoZWlyIGRldmljZXMgc3Vja3MuIEV2ZW4gSSBmb3IgeWVhcnMg
dGhvdWdodCB0aGUgZHJpdmUgc3Vja3MsDQpiZWZvcmUgSSB0b29rIGEgY2xvc2VyIGxvb2suIElm
IHlvdSBsb25nIHRlcm0gd2FudCBtb3JlIG5ldyBkZXZpY2VzIGluDQphbiBhbGxvdyBsaXN0IHRo
YW4gdGhlIHByZXZpb3VzIHF1aXJrIGxpc3QgaW5jbHVkZWQgKDkgb3IgMTAgZG9lcyBub3QNCnNv
dW5kIHRoYXQgbWFueSB0byBtZSksIC4uLiB3aGF0ZXZlciB5b3UgcHJlZmVyICwtKSBJIHdvdWxk
IHJhdGhlcg0KaGF2ZSAxMCBxdWlyayBkaXNhYmxlIGxpc3QgdGhhbiBwb3RlbnRpYWwgbWFueSBt
b3JlIHdoaXRlIGxpc3RlZCB0aGUNCm5leHQgeWVhcnMgdG8gY29tZS4gTWF5YmUgd2Ugc2hvdWRs
IHNpbXBseSByZXN0b3JlIHRoZSBwcmV2b2l1cw0KcXVpcmtzLg0KDQogICAgICBSZW7DqQ0KDQot
LSANCiAgUmVuw6kgUmViZSwgRXhhY3RDT0RFIEdtYkgsIExpZXR6ZW5idXJnZXIgU3RyLiA0Miwg
REUtMTA3ODkgQmVybGluDQogIGh0dHBzOi8vZXhhY3Rjb2RlLmNvbSB8IGh0dHBzOi8vdDJzZGUu
b3JnIHwgaHR0cHM6Ly9yZW5lLnJlYmUuZGUNCg==
