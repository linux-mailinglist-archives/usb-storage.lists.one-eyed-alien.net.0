Return-Path: <usb-storage+bncBDBMLTW6VQDRBP5PSWCAMGQEWYKISVI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wr1-x446.google.com (mail-wr1-x446.google.com [IPv6:2a00:1450:4864:20::446])
	by mail.lfdr.de (Postfix) with ESMTPS id D696536A6ED
	for <lists+usb-storage@lfdr.de>; Sun, 25 Apr 2021 13:51:27 +0200 (CEST)
Received: by mail-wr1-x446.google.com with SMTP id j4-20020adfe5040000b0290102bb319b87sf17440514wrm.23
        for <lists+usb-storage@lfdr.de>; Sun, 25 Apr 2021 04:51:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619351487; cv=pass;
        d=google.com; s=arc-20160816;
        b=J/I0l6yyZH67BDTDkX4ejYGn3OcF9ayqkYnxN+FdLz9Nt8boZPfs6/xlg2utJArGr3
         akJFo67W1J/IKXtVXFuSz6gsor3tx4MQoCydv+79a4pNeEh0jklY0+TwkroQIcxnVyRs
         Qs0PWbp0K5YIj3RAnWXQ3ZK6h18ZiH/YgQ6CZ/Utlnvu7Bo0cYKvw9N0Vb57m2h0UeSQ
         5plKZ7P8gb/UCqLujk4PHC62PNrzepufs3tOpMx0zB1Riy/wOi+EBoo9C5QWRYb/sv17
         4kB3FhmZc0SEH4rUVGRyTaAheUdur/OyE2OIglvcQis9TNiFa+6kjNRHSQzu+Q7UJXJJ
         mX5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:from:subject:cc:to:message-id
         :date:sender:dkim-signature;
        bh=sU3FA3aS+7ZxiA3LVGXzAmJWvNZVIHORz9y/WS8YYks=;
        b=FCxAYPKIW/ZPKv/CflRCkR0XJcFV0tcXQy6olq4DpDRW3xXtlHxHveY3rLxa10q2Qo
         G6A5X1H5D5pRzVt8GpFnYkKalEUBlxA03yPqRpu47XPkvN7DP72UWM+1+L8c0eGEH14z
         QuxHyo51/OrY/6M684gei7aj7WxRghi8RK48frQU0CGlvjSh6TE309fc3ee36dz3wSOz
         INiqBq1AQeFdzvvFEtW0v2WvabESoYCJ9fr0GqXcoSuhFDOaTH7IdhHP55lHygvtUZ9M
         qavmcLaVZJH8HmvDJnXc2BJV23e+gBc8VgK3to4P6B5N2KWB2Xh9+oVlaq+I84v36Q9H
         olgg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@exactco.de header.s=x header.b=jomy+EF9;
       spf=pass (google.com: domain of rene@exactcode.com designates 144.76.154.42 as permitted sender) smtp.mailfrom=rene@exactcode.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:message-id:to:cc:subject:from:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sU3FA3aS+7ZxiA3LVGXzAmJWvNZVIHORz9y/WS8YYks=;
        b=eD4dnmaFw0pXBuSBlYNTS+STwFajD/6dvoLkbOybUFRtU2EsxDuysQMaKz5A2BiPDr
         Gk1zuLGsIdtzcIob8B+w4pBrUYIbaZp4TuVePIPntuPrcc3SczLolsMgjCajb5NGPv03
         jsfgh5FE9+oKuX8sUUWvCR4Hq8qOkaL9Wwg5I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:message-id:to:cc:subject:from
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=sU3FA3aS+7ZxiA3LVGXzAmJWvNZVIHORz9y/WS8YYks=;
        b=rCmo9gnPdw66YS/yfXH/AsSUVyK3mE0HsanHFwZHNZbYN9Y57pMaSLWSb3NcoCtora
         GGlMQ1PsFn1gHsdMMPsFaD7vEzDZzGocRoxPRPHy7Q+0znr864AxB7M6TjG31Kv6q5Ph
         MGewOGYHXGkN5aXfN+y+h5VmvtTEHmhdwiybpujsDsWOhj2ArXZ1hBEjWOaIWdznhVM3
         NHEtAVwW1QW5R+QAtjki+ySzhYZ2aOzQfGqW/05ZvxWu3fFAPzsSWDojY5gi15SA6q/G
         nEyHuspQxKvDRmuaki+CsUpsL+fmkHlqHRK+nEcwadWrcn1Ve2aSikcoI8KOMoZ6Kyi7
         cASQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM530sm3GL4ZopF2YdtSiMsr3QIKoikc5BZsb7aQprNgop5E0ZnJ+A
	5KTzaRio9/X4c8UN2TtKPV19GQ==
X-Google-Smtp-Source: ABdhPJwY8Mgc8cfDiNxzwnlNTcysXgtcsRseE1MLJ03ckiTglpe37OZAxXzdwksm1TO02dsqZsH9eQ==
X-Received: by 2002:a05:6000:184c:: with SMTP id c12mr16894002wri.125.1619351487568;
        Sun, 25 Apr 2021 04:51:27 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a1c:c205:: with SMTP id s5ls6241648wmf.3.canary-gmail; Sun,
 25 Apr 2021 04:51:26 -0700 (PDT)
X-Received: by 2002:a1c:1dca:: with SMTP id d193mr3314438wmd.148.1619351486289;
        Sun, 25 Apr 2021 04:51:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619351486; cv=none;
        d=google.com; s=arc-20160816;
        b=PN/ys2XMF7GCVPP08r7w0NC5dF/LD0hxqOAAC8h5ByLCCqb+kMN+xpC7vhciuFUuCi
         3IX6bk19XUGRqIK18qZ/ubMvGgFhtGM5cPqyY5/Urb2oEnia8TuYSz7eANOLiyhXbEfD
         6bSivSsb6TsjAPqXCWK5SjANkFuVlfKv+zXi4JFaiuTd2JUfmREL8OTObYAEeykee7Ru
         aGbEBGHE/Dpbe1eGV3If0ZLOzqyJ6NlMnGrBVwuYCSLsAOgXG4JCgTW8+CakI0l3MXrV
         5fYbfU4lEDpHoFFWKDLUJFN3+aXWOVhxcH08017GT/5OuF9nKrxc+VtBGrMm6iRqSPKg
         hkZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:from
         :subject:cc:to:message-id:date:dkim-signature;
        bh=sU3FA3aS+7ZxiA3LVGXzAmJWvNZVIHORz9y/WS8YYks=;
        b=dcy8YyeA2yjKj5fK8a0nVnSKmQjpUrnwOp5AWKw542nZ5W7Bv9v/zD91Okfsa4nLxX
         GK5YFAIDx3WSz3cv3/dWK0lQylzBdViv7xcWmBr4oT0dL3LLN1XOe2xIvZLafYCVUQ0g
         w+Qc2hRyLI8MPzXxkW7CpY+F5n37Zk/1ToOgmEucGSkk6uPf/ycpNr3MdKyDtN9iNQDz
         85u/UyKL4C/OVKfGh+2bh+AuDPeCcwGnDiv8D3YtVyFlvA9k8VhDzg7cLWwHubAgfPqp
         P1gl6QaGrJ+zhkwtx3r/dP1G0uI1ORkW2WCQZxBVat8G3hk/oKYCtUir/5X5DXY7DE2/
         TFvQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@exactco.de header.s=x header.b=jomy+EF9;
       spf=pass (google.com: domain of rene@exactcode.com designates 144.76.154.42 as permitted sender) smtp.mailfrom=rene@exactcode.com
Received: from mx.exactcode.de (mx.exactcode.de. [144.76.154.42])
        by mx.google.com with ESMTPS id c2si14776814wmk.165.2021.04.25.04.51.26
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Apr 2021 04:51:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of rene@exactcode.com designates 144.76.154.42 as permitted sender) client-ip=144.76.154.42;
Received: from exactco.de ([90.187.5.221])
	by mx.exactcode.de with esmtp (Exim 4.82)
	(envelope-from <rene@exactcode.com>)
	id 1ladIQ-00033Z-BP; Sun, 25 Apr 2021 11:51:31 +0000
Received: from [192.168.2.131] (helo=localhost)
	by exactco.de with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.86_2)
	(envelope-from <rene@exactcode.com>)
	id 1ladEk-0002sW-4E; Sun, 25 Apr 2021 11:47:42 +0000
Date: Sun, 25 Apr 2021 13:50:48 +0200 (CEST)
Message-Id: <20210425.135048.1651130854722875318.rene@exactcode.com>
To: hdegoede@redhat.com
Cc: gregkh@linuxfoundation.org, stern@rowland.harvard.edu,
 linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH] unbreak all modern Seagate ATA pass-through
 for SMART
From: Rene Rebe <rene@exactcode.com>
In-Reply-To: <ee48ea5d-c820-ae24-b557-2a7b7372821c@redhat.com>
References: <20210425.124119.1949311822603950729.rene@exactcode.com>
	<7187e934-b87a-edce-2ac6-f201ea9c7b7d@redhat.com>
	<ee48ea5d-c820-ae24-b557-2a7b7372821c@redhat.com>
X-Mailer: Mew version 6.8 on Emacs 27.1
Mime-Version: 1.0
Content-Type: Text/Plain; charset=utf-8
Content-Transfer-Encoding: base64
X-Spam-Score: -0.5 (/)
X-Original-Sender: rene@exactcode.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@exactco.de header.s=x header.b=jomy+EF9;       spf=pass
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

RnJvbTogSGFucyBkZSBHb2VkZSA8aGRlZ29lZGVAcmVkaGF0LmNvbT4NClN1YmplY3Q6IFJlOiBb
UEFUQ0hdIHVuYnJlYWsgYWxsIG1vZGVybiBTZWFnYXRlIEFUQSBwYXNzLXRocm91Z2ggZm9yIFNN
QVJUDQpEYXRlOiBTdW4sIDI1IEFwciAyMDIxIDEyOjU4OjQwICswMjAwDQoNCj4gSGksDQo+IA0K
PiBPbiA0LzI1LzIxIDEyOjQ3IFBNLCBIYW5zIGRlIEdvZWRlIHdyb3RlOg0KPiA+IEhpLA0KPiA+
IA0KPiA+IE9uIDQvMjUvMjEgMTI6NDEgUE0sIFJlbmUgUmViZSB3cm90ZToNCj4gPj4gR3JlZyBL
SCB3cm90ZToNCj4gPj4NCj4gPj4+IE9uIFN1biwgQXByIDI1LCAyMDIxIGF0IDA5OjIwOjU5QU0g
KzAyMDAsIFJlbsOpIFJlYmUgd3JvdGU6DQo+ID4+Pj4gSGV5LA0KPiA+Pj4+DQo+ID4+Pj4+IE9u
IDI1LiBBcHIgMjAyMSwgYXQgMDQ6MzEsIEFsYW4gU3Rlcm4gPHN0ZXJuQHJvd2xhbmQuaGFydmFy
ZC5lZHU+IHdyb3RlOg0KPiA+Pj4+Pj4gU2VhZ2F0ZSBkZXZpY2VzIiBpbiAyMDE3LiBBcHBhcmVu
dGx5IHNvbWUgZWFybHkgb25lcyB3aGVyZSBidWdneSwgLi4uDQo+ID4+Pj4+Pg0KPiA+Pj4+Pj4g
SG93ZXZlciwgZmFzdCBmb3J3YXJkIGEgY291cGxlIG9mIHllYXJzIGFuZCB0aGlzIGlzIG5vIGxv
bmdlciB0cnVlLA0KPiA+Pj4+Pj4gdGhpcyBTZWdhdGUgU2V2ZW4gZXZlbiBpcyBhbHJlYWR5IGZy
b20gMjAxNiwgYW5kIGFwcGFyZW50bHkgZmlyc3QNCj4gPj4+Pj4+IGF2YWlsYWJsZSBpbiAyMDE1
LiBJIHN1Z2dlc3QgcmVtb3ZpbmcgdGhpcyByYXRoZXIgZHJhc3RpYyBnbG9iYWwNCj4gPj4+Pj4+
IG1lYXN1cmUsIGFuZCBpbnN0ZWFkIG9ubHkgYWRkIHZlcnkgb2xkIGJyb2tlbiBvbmVzIHdpdGgg
aW5kaXZpZHVhbA0KPiA+Pj4+Pj4gcXVpcmtzLCBzaG91bGQgYW55IG9mIHRoZW0gc3RpbGwgYmUg
YWxpdmUgOy0pDQo+ID4+Pj4+Pg0KPiA+Pj4+Pj4gU2lnbmVkLW9mZi1ieTogUmVuw6kgUmViZSA8
cmVuZUBleGFjdGNvZGUuY29tPg0KPiA+Pj4+Pj4NCj4gPj4+Pj4+IC0tLSBsaW51eC01LjExL2Ry
aXZlcnMvdXNiL3N0b3JhZ2UvdWFzLWRldGVjdC5oLmJhY2t1cAkyMDIxLTAzLTA1IDExOjM2OjAw
LjUxNzQyMzcyNiArMDEwMA0KPiA+Pj4+Pj4gKysrIGxpbnV4LTUuMTEvZHJpdmVycy91c2Ivc3Rv
cmFnZS91YXMtZGV0ZWN0LmgJMjAyMS0wMy0wNSAxMTozNjoxNi4zNzM0MjQ1NDQgKzAxMDANCj4g
Pj4+Pj4+IEBAIC0xMTMsOCArMTEzLDQgQEANCj4gPj4+Pj4+IAl9DQo+ID4+Pj4+Pg0KPiA+Pj4+
Pj4gLQkvKiBBbGwgU2VhZ2F0ZSBkaXNrIGVuY2xvc3VyZXMgaGF2ZSBicm9rZW4gQVRBIHBhc3Mt
dGhyb3VnaCBzdXBwb3J0ICovDQo+ID4+Pj4+PiAtCWlmIChsZTE2X3RvX2NwdSh1ZGV2LT5kZXNj
cmlwdG9yLmlkVmVuZG9yKSA9PSAweDBiYzIpDQo+ID4+Pj4+PiAtCQlmbGFncyB8PSBVU19GTF9O
T19BVEFfMVg7DQo+ID4+Pj4+PiAtDQo+ID4+Pj4+PiAJdXNiX3N0b3JfYWRqdXN0X3F1aXJrcyh1
ZGV2LCAmZmxhZ3MpOw0KPiA+Pj4+Pg0KPiA+Pj4+PiBJIGRvbid0IHdhbnQgdG8gZG8gdGhpcyB1
bmxlc3MgeW91IGNhbiBzdWdnZXN0IGFuIGFwcHJvYWNoIHRoYXQgd29uJ3QgDQo+ID4+Pj4+IHN1
ZGRlbmx5IGJyZWFrIGFsbCB0aG9zZSBvbGQgYnVnZ3kgZHJpdmVzLiAgSnVzdCBiZWNhdXNlIHRo
ZXkgYXJlIG5vdyANCj4gPj4+Pj4gZml2ZSB5ZWFycyBvbGQgb3IgbW9yZSBkb2Vzbid0IG1lYW4g
dGhleSBhcmUgbm8gbG9uZ2VyIGluIHVzZS4NCj4gPj4+Pg0KPiA+Pj4+IFdlbGwsIHdoYXQgZG8g
eW91IHByb3Bvc2UgdGhlbj8gQSBhbGxvdyBxdWlyayBmb3IgYWxsIG5ldyBkZXZpY2VzIGdvaW5n
IGZvcndhcmQ/DQo+ID4+Pj4gR2l2ZW4gdGhhdCB0aGUgdXNlciB1c3VhbGx5IG5lZWRzIHRvIGFj
dGl2ZWx5IHJ1biBzb21ldGhpbmcgbGlrZSBzbWFydGN0bA0KPiA+Pj4+IG1hbnVhbGx5IG9uIHRo
ZSBkcml2ZSBJIGRvbuKAmXQgc2VlIHRoYXQgdGhpcyBzaG91bGQgY2F1c2UgdG9vIG1hbnkgaXNz
dWVzLg0KPiA+Pj4+IEkgZG9u4oCZdCBoYXZlIGFueSBub24tc3VwcG9ydGluZyBkZXZpY2UgLSBj
YW4gd2Ugbm90IGp1c3QgYWRkIHRoZW0gdG8gdGhlDQo+ID4+Pj4gcXVpcmsgbGlzdCB3aGVuIHNv
bWVvbmUgcmVwb3J0cyBvbmU/DQo+ID4+Pg0KPiA+Pj4gSG93IGFib3V0IHNpbmNlIHlvdSBrbm93
IHlvdXIgZGV2aWNlIHdvcmtzLCB5b3UgbWFrZSB0aGUgY2hlY2sgZGV0ZWN0DQo+ID4+PiB5b3Vy
IHNwZWNpZmljIGRldmljZSBhbmQgbm90IGFwcGx5IHRoZSBmbGFnIHRvIGl0PyAgWW91IHNob3Vs
ZCBiZSBhYmxlDQo+ID4+PiB0byBkbyBzbyBiYXNlZCBvbiB0aGUNCj4gPj4NCj4gPj4gU3VyZSwg
d2hpbGUgdGhhdCBkb2VzIG5vdCByZWFsbHkgc29sdmUgdGhpcyBmb3IgYWxsIHRoZSBvdGhlciBu
ZXdlcg0KPiA+PiBTZWFnYXRlIGRyaXZlcyBvdGhlciB1c2VycyBtaWdodCBoYXZlIGF0IGhvbWUs
IGhlcmUgaXMgYSBwYXRjaA0KPiA+PiBjaGVja2luZyBmb3IgdGhpcyBvbmUgVVNCIHByb2R1Y3Qg
SUQuIEkgaG9wZSB0aGF0IGlzIHdoYXQgeW91IG1lYW50Og0KPiA+Pg0KPiA+PiBTaWduZWQtb2Zm
LWJ5OiBSZW7DqSBSZWJlIDxyZW5lQGV4YWN0Y29kZS5jb20+DQo+ID4+DQo+ID4+IC0tLSBsaW51
eC01LjExL2RyaXZlcnMvdXNiL3N0b3JhZ2UvdWFzLWRldGVjdC5oLmJhY2t1cAkyMDIxLTAzLTA1
IDExOjM2OjAwLjUxNzQyMzcyNiArMDEwMA0KPiA+PiArKysgbGludXgtNS4xMS9kcml2ZXJzL3Vz
Yi9zdG9yYWdlL3Vhcy1kZXRlY3QuaAkyMDIxLTAzLTA1IDExOjM2OjE2LjM3MzQyNDU0NCArMDEw
MA0KPiA+PiBAQCAtMTEzLDUgKzExMyw2IEBADQo+ID4+ICANCj4gPj4gIAkvKiBBbGwgU2VhZ2F0
ZSBkaXNrIGVuY2xvc3VyZXMgaGF2ZSBicm9rZW4gQVRBIHBhc3MtdGhyb3VnaCBzdXBwb3J0ICov
DQo+ID4+IC0JaWYgKGxlMTZfdG9fY3B1KHVkZXYtPmRlc2NyaXB0b3IuaWRWZW5kb3IpID09IDB4
MGJjMikNCj4gPj4gKwlpZiAoKGxlMTZfdG9fY3B1KHVkZXYtPmRlc2NyaXB0b3IuaWRWZW5kb3Ip
ID09IDB4MGJjMikgJiYNCj4gPj4gKwkgICAgKGxlMTZfdG9fY3B1KHVkZXYtPmRlc2NyaXB0b3Iu
aWRQcm9kdWN0KSAhPSAweGFiMDMpKQ0KPiA+PiAgCQlmbGFncyB8PSBVU19GTF9OT19BVEFfMVg7
DQo+ID4+ICANCj4gPj4NCj4gPiANCj4gPiBBcyBJIGluZGljYXRlZCBpbiBteSBvdGhlciBlbWFp
bCB3aGljaCBjcm9zc2VkIHdpdGggdGhpcyBvbmUsIHBsZWFzZSBtYWtlIHRoaXMNCj4gPiBtb3Jl
IGdlbmVyaWMsIGFkZCBhIG5ldyBVU19GTF9BVEFfMVhfT0sgZmxhZyBhbmQgbWFrZSB0aGUgYWJv
dmUgY29kZSBjaGVjayB0aGF0ICsNCj4gPiBhZGQgYSBuZXcgdW51c3VhbF91YXMuaCBlbnRyeSBm
b3IgeW91ciBkZXZpY2Ugc2V0dGluZyB0aGUgbmV3IGZsYWcuDQo+ID4gDQo+ID4gTm90ZSB0aGVy
ZSBpcyBubyBuZWVkIHRvIGFkZCBzdXBwb3J0IGZvciB0aGUgbmV3IGZsYWcgdG8gdXNiX3N0b3Jf
YWRqdXN0X3F1aXJrcygpDQo+ID4gaWYgYSB1c2VyIG92ZXJyaWRlcyBxdWlya3MgZm9yIGEgZGV2
aWNlIG9uIHRoZSBrZXJuZWwgY29tbWFuZGxpbmUgd2l0aG91dCBzcGVjaWZ5aW5nDQo+ID4gdGhl
ICJ0IiBmbGFnIHRoZW4gdGhlIFVTX0ZMX05PX0FUQV8xWCBmbGFnIHdpbGwgYWxyZWFkeSBnZXQg
Y2xlYXJlZC4NCj4gPiANCj4gPiBJIGRlbGliZXJhdGVseSBwdXQgdGhlOg0KPiA+IA0KPiA+ICAg
ICAgICAgaWYgKGxlMTZfdG9fY3B1KHVkZXYtPmRlc2NyaXB0b3IuaWRWZW5kb3IpID09IDB4MGJj
MikNCj4gPiAgICAgICAgICAgICAgICAgZmxhZ3MgfD0gVVNfRkxfTk9fQVRBXzFYOw0KPiA+IA0K
PiA+IGNvZGUgYmVmb3JlIHRoZSB1c2Jfc3Rvcl9hZGp1c3RfcXVpcmtzKCkgY2FsbCB0byBhbGxv
dyB1c2VycyB0byBvdmVycmlkZSB0aGlzDQo+ID4gZnJvbSB0aGUga2VybmVsIGNvbW1hbmRsaW5l
Lg0KPiANCj4gcC5zLg0KPiANCj4gQSAiZ2l0IGxvZyBkcml2ZXJzL3VzYi9zdG9yYWdlL3VudXN1
YWxfdWFzLmgiIHF1aWNrbHkgZmluZHMgdGhlIGNvbW1pdCB3aGljaCByZW1vdmVkIHRoZQ0KPiBx
dWlya3Mgd2hpY2ggdGhlIGdlbmVyaWMgU2VhZ2F0ZSBjaGVjayByZXBsYWNlcy4gQXQgdGhhdCB0
aW1lIHRoZXJlIHdlcmUgVVNfRkxfTk9fQVRBXzFYDQo+IHF1aXJrcyBmb3IgKjkqIGRpZmZlcmVu
dCBTZWFnYXRlIG1vZGVscyBwcmVzZW50IGluIHVudXN1YWxfdWFzLmggYW5kIEkgYXNzdW1lIHNv
bWVvbmUNCj4gcmVwb3J0aW5nIGEgMTB0aCBtb2RlbCBpcyB3aGF0IG1hZGUgbWUgZ28gZm9yIHRo
ZSBqdXN0IGRpc2FibGUgdGhpcyBmb3IgYWxsIFNlYWdhdGUNCj4gZHJpdmVyIG9wdGlvbi4NCj4g
DQo+IFNlZSBjb21taXQgOTIzMzVhZDllODk1ICgidWFzOiBSZW1vdmUgVVNfRkxfTk9fQVRBXzFY
IHVudXN1YWwgZGV2aWNlIGVudHJpZXMgZm9yIFNlYWdhdGUgZGV2aWNlcyIpDQo+IA0KPiBBbHNv
IEkgZGlkIGEgcXVpY2sgd2Vic2VhcmNoIGZvciB0aGUgIlNlYWdhdGUgU2V2ZW4iIGFuZCByYXRo
ZXIgdGhlbiB0aGUgdXN1YWwgcmUtdXNhYmxlDQo+IGRyaXZlLWVuY2xvc3VyZSB3aXRoIGEgc3Rh
bmRhcmQgMi41IiBvciAzLjUiIGRyaXZlIGluIHRoZXJlLCB0aGlzIHNlZW1zIHRvIGJlIGEgY3Vz
dG9tDQo+IG1vZGVsIHdoZXJlIHRoZSBlbmNsb3N1cmUgaXMgYWN0dWFsbHkgaW50ZWdyYXRlZCBp
bnRvIHRoZSBkcml2ZSB0byBtYWtlIGl0IHNtYWxsZXIuDQo+IA0KPiBTbyBJIHdvdWxkIG5vdCBi
ZSBzdXJwcmlzZWQgaWYgdGhpcyBpcyB1c2luZyBhbm90aGVyIGNoaXBzZXQgdGhlbiB0aGVpciB1
c3VhbCBlbmNsb3N1cmVzLA0KPiB3aGljaCB3b3VsZCBleHBsYWluIHdoeSBpdCBkb2VzIGhhdmUg
d29ya2luZyBBVEExeCBwYXNzdGhyb3VnaC4NCg0KSSB3b3VsZCBleHBlY3QgdGhhdCBtb3JlIG1v
ZGVybiBkZXZpY2VzIHRvIHdvcmsuIFZlbmRvcnMgdXN1YWxseQ0KbGluZWFybHkgYWxsb2NhdGUg
dGhlaXIgcHJvZHVjdCBpZHMgZm9yIG5ldyBkZXZpY2VzLCBhbmQgd2UgY291bGQNCmFsbG93IGxp
c3QgcHJvZHVjdCBpZHMgaGlnaGVyIHRoYW4gdGhpcyBTZXZlbiB0byB1bmJyZWFrIG1vcmUgbW9k
ZXJuDQpkZXZpY2VzIGJ5IGRlZmF1bHQgYW5kIGxpbWl0IHRoZSBhbW91bnQgb2YgZGV2aWNlIHF1
aXJrcyBuZWVkZWQ/DQoNCglSZW7DqQ0KDQotLSANCiAgUmVuw6kgUmViZSwgRXhhY3RDT0RFIEdt
YkgsIExpZXR6ZW5idXJnZXIgU3RyLiA0MiwgREUtMTA3ODkgQmVybGluDQogIGh0dHBzOi8vZXhh
Y3Rjb2RlLmNvbSB8IGh0dHBzOi8vdDJzZGUub3JnIHwgaHR0cHM6Ly9yZW5lLnJlYmUuZGUNCg==
