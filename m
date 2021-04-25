Return-Path: <usb-storage+bncBDBMLTW6VQDRB5MOSWCAMGQENRPRVII@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wr1-x445.google.com (mail-wr1-x445.google.com [IPv6:2a00:1450:4864:20::445])
	by mail.lfdr.de (Postfix) with ESMTPS id 663B136A6C0
	for <lists+usb-storage@lfdr.de>; Sun, 25 Apr 2021 12:41:58 +0200 (CEST)
Received: by mail-wr1-x445.google.com with SMTP id s9-20020a5d51090000b02901028ea30da6sf17315235wrt.7
        for <lists+usb-storage@lfdr.de>; Sun, 25 Apr 2021 03:41:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619347318; cv=pass;
        d=google.com; s=arc-20160816;
        b=TkSfR/9+AYNMUdKHzVuxoVSSjkVDhgvilG8/NRJW8+/D6VehX8kaSk5i71HNiIkIAu
         o9KLW0JW6O64x6JPiIn6oYXDhGMKZYtH4AClDUHYSNt9XdicTfEgj4LrPSxsclwlwkl5
         XRtZ3f/qc2p4YuFQ3m3+kx1blzuT971eG5Uyr0EKU92WWgK9K7mty6go/11GjX7NRyQI
         MyupXdQIcVM/9iTdSp0u6XZquDU6uZGAYEiZALEUnwueAyLRNXgQQLczjf8K4xCqOzWI
         XmSCr0Iq+PzqFcHa2VYcboCLjHyUPfU0cVNuJTgbH/SScoMroKL/sqAaR2zKdmg4vQSp
         gtzQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:from:subject:cc:to:message-id
         :date:sender:dkim-signature;
        bh=ccIJxWMmgTcFnK0pzwZla89q+26nIBEcKC+H20b9nEg=;
        b=GxHqo3CIiKH4oHESFjl4TBxsN5O+WmcUuWYG8tof92AHaJ8PnnZpSv1C96+8VYvYGI
         k3CcC5mXbTfq66QF2AI1GhrqUIynWi4/CqKXVoAbfkWFwpWGjForPf5TlrSbJlMWli9D
         28tmRmYeUpHKCiLgeH7d5VaXMAVc9vZpeBwM4E0W3xn1pwjn1UExRbttqtK1rN+GaQBj
         PDCJst7FwaKuyWtWsKD/AMDg/klDJjSJB5MzDOO0rJHFSa3qHShqI9QhBL5cpfvjWREg
         xs5AmC78Rwc5oOTegc18XLMSoRIYCYpnP1FUrzG7ilswZS9kjA11/XsnTVoNBZAB/HuI
         +PWQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@exactco.de header.s=x header.b=EpuF7DMo;
       spf=pass (google.com: domain of rene@exactcode.com designates 144.76.154.42 as permitted sender) smtp.mailfrom=rene@exactcode.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:message-id:to:cc:subject:from:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ccIJxWMmgTcFnK0pzwZla89q+26nIBEcKC+H20b9nEg=;
        b=SSs3s6be+gqD2J2NiCRi/KU0N8xDL8K+EZ/AggMnhqr0SomSVV4vj/A4/tmBWEz5nm
         9OlY2D3rxRzsffBTOauhI28ujkn18nPyIowHa+XB6w6abjX03Q7eMZQcISXoKKYyHRDr
         l7Ojk8cWmq+DBgWjkOvvqgA9cyWH3Qbqf9Vz8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:message-id:to:cc:subject:from
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ccIJxWMmgTcFnK0pzwZla89q+26nIBEcKC+H20b9nEg=;
        b=NWkExD2qBQB1uQrQ4vYdTMx/gSBeUurojW4WXFeLdWQUvZ13xzT+ypyRwBhRDhS5gu
         4KV2vOuBGarXyWeRtF3lvOKtrMEd0XWWiHKEUMHnkNNtXSvFn6hycvSjqZROiz82qjtC
         TI33HWHw+5dxpfrkCW4mNTahrO29qseAYnSS8fufiIsNJ3x/nWQXO7jR853hZgFUstU3
         e8TaB3NYnNdVsLMLI96P+R2hNXuwxZXOA5eszjJ8HOZ0FKMJIroU1Uw8Qmh4a+JHm5uJ
         Ka/qFl6Qt750AvWImly9XbbXkh+SlVLjJI1kUivUFWDqq+ymbFu6N894owMB3bcER+m3
         3f2w==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM533BXvQFMe7xaJ9l1FsdON9NWKXud0EjzbW0yUBZbcjG9dYPBlrJ
	tS9XeVSJRow86jdk0JNj3qAhkw==
X-Google-Smtp-Source: ABdhPJxN68s1RK0NBIGfg9Bt1TTr4heVtSUu7hKydoTrMG659onYT3gQujBlsmjWEOqhd0vvS9XvIw==
X-Received: by 2002:a1c:ac41:: with SMTP id v62mr455462wme.56.1619347318095;
        Sun, 25 Apr 2021 03:41:58 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:600c:11:: with SMTP id g17ls6197712wmc.3.gmail; Sun, 25
 Apr 2021 03:41:56 -0700 (PDT)
X-Received: by 2002:a05:600c:4fcc:: with SMTP id o12mr13861740wmq.163.1619347316773;
        Sun, 25 Apr 2021 03:41:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619347316; cv=none;
        d=google.com; s=arc-20160816;
        b=07gRT73ZCYN4H7WB3bS0G4/9GiCYEyBUk8ZpjtaEXgfhwIlSsBkJ7SaJoyd+jeyJn/
         fz5aEpbQG4r/RXoQ2AHlihkGEDGSzDXcxdcg7cST9/ST0MqHMipuORCRPpb7ML6S+lUO
         DfJELpObyQceGVIsVINvnkX0OL4cCXcTAHMDmSbR5O885JqxOTCSnp5K9n1fvnyeBo3b
         wmUjpfXDlvqgu58YvT49tOAWXOm3xXojzF/8+BL95uupmOjWNsMZNsGiI4KmKMK8o4kY
         lAYS/irXBfqHCeKGdSFz+3SfUPSEOfWxpex7JmWX83iG1zZe5hoALOjU58OWp0tuC2F1
         1G1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:from
         :subject:cc:to:message-id:date:dkim-signature;
        bh=ccIJxWMmgTcFnK0pzwZla89q+26nIBEcKC+H20b9nEg=;
        b=FZ8EkcBXSwWpRp2Q4+oD4/7qgVRYLLvM+PUTYGQbBAJfJ+BWSePVmKWd1vVIE3lPOI
         wtsR59LbAca3vNgaJ04CczDQNaaF6P0rFkBybwyElJPXhDbniIIOTKLhIAxsOPrHFL6A
         GOP8N4DqFeX+rkhpN1DCutfEjfZKFcHIvaJjU+M+UaUc6EUwBEcUCNpqaul7rhKf6DYy
         UbMbvR7J+0T8kh0BITJwqAXv2oFV+RFacZ4ARrq7ZD10vz6cge3jG7i9ySu+qHXsOQ9O
         esVFtI2TzLfv8eixIfMl19OlIFIxbP92fCJVZ5KR12EkInSvhAXmZoaEn7IIJXsZ9uIL
         l+aQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@exactco.de header.s=x header.b=EpuF7DMo;
       spf=pass (google.com: domain of rene@exactcode.com designates 144.76.154.42 as permitted sender) smtp.mailfrom=rene@exactcode.com
Received: from mx.exactcode.de (mx.exactcode.de. [144.76.154.42])
        by mx.google.com with ESMTPS id n13si13161125wmi.135.2021.04.25.03.41.56
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Apr 2021 03:41:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of rene@exactcode.com designates 144.76.154.42 as permitted sender) client-ip=144.76.154.42;
Received: from exactco.de ([90.187.5.221])
	by mx.exactcode.de with esmtp (Exim 4.82)
	(envelope-from <rene@exactcode.com>)
	id 1lacDB-0002oN-FU; Sun, 25 Apr 2021 10:42:01 +0000
Received: from [192.168.2.131] (helo=localhost)
	by exactco.de with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.86_2)
	(envelope-from <rene@exactcode.com>)
	id 1lac9V-0006C6-5Y; Sun, 25 Apr 2021 10:38:13 +0000
Date: Sun, 25 Apr 2021 12:41:19 +0200 (CEST)
Message-Id: <20210425.124119.1949311822603950729.rene@exactcode.com>
To: gregkh@linuxfoundation.org
Cc: stern@rowland.harvard.edu, hdegoede@redhat.com,
 linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH] unbreak all modern Seagate ATA pass-through
 for SMART
From: Rene Rebe <rene@exactcode.com>
In-Reply-To: <YIUbHKqs2gQPAu2T@kroah.com>
References: <20210425023133.GC324386@rowland.harvard.edu>
	<883AF188-7817-42E2-84E8-F1DD7A5F3C08@exactcode.com>
	<YIUbHKqs2gQPAu2T@kroah.com>
X-Mailer: Mew version 6.8 on Emacs 27.1
Mime-Version: 1.0
Content-Type: Text/Plain; charset=utf-8
Content-Transfer-Encoding: base64
X-Spam-Score: -3.1 (---)
X-Original-Sender: rene@exactcode.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@exactco.de header.s=x header.b=EpuF7DMo;       spf=pass
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

R3JlZyBLSCB3cm90ZToNCg0KPiBPbiBTdW4sIEFwciAyNSwgMjAyMSBhdCAwOToyMDo1OUFNICsw
MjAwLCBSZW7DqSBSZWJlIHdyb3RlOg0KPiA+IEhleSwNCj4gPiANCj4gPiA+IE9uIDI1LiBBcHIg
MjAyMSwgYXQgMDQ6MzEsIEFsYW4gU3Rlcm4gPHN0ZXJuQHJvd2xhbmQuaGFydmFyZC5lZHU+IHdy
b3RlOg0KPiA+ID4+IFNlYWdhdGUgZGV2aWNlcyIgaW4gMjAxNy4gQXBwYXJlbnRseSBzb21lIGVh
cmx5IG9uZXMgd2hlcmUgYnVnZ3ksIC4uLg0KPiA+ID4+IA0KPiA+ID4+IEhvd2V2ZXIsIGZhc3Qg
Zm9yd2FyZCBhIGNvdXBsZSBvZiB5ZWFycyBhbmQgdGhpcyBpcyBubyBsb25nZXIgdHJ1ZSwNCj4g
PiA+PiB0aGlzIFNlZ2F0ZSBTZXZlbiBldmVuIGlzIGFscmVhZHkgZnJvbSAyMDE2LCBhbmQgYXBw
YXJlbnRseSBmaXJzdA0KPiA+ID4+IGF2YWlsYWJsZSBpbiAyMDE1LiBJIHN1Z2dlc3QgcmVtb3Zp
bmcgdGhpcyByYXRoZXIgZHJhc3RpYyBnbG9iYWwNCj4gPiA+PiBtZWFzdXJlLCBhbmQgaW5zdGVh
ZCBvbmx5IGFkZCB2ZXJ5IG9sZCBicm9rZW4gb25lcyB3aXRoIGluZGl2aWR1YWwNCj4gPiA+PiBx
dWlya3MsIHNob3VsZCBhbnkgb2YgdGhlbSBzdGlsbCBiZSBhbGl2ZSA7LSkNCj4gPiA+PiANCj4g
PiA+PiBTaWduZWQtb2ZmLWJ5OiBSZW7DqSBSZWJlIDxyZW5lQGV4YWN0Y29kZS5jb20+DQo+ID4g
Pj4gDQo+ID4gPj4gLS0tIGxpbnV4LTUuMTEvZHJpdmVycy91c2Ivc3RvcmFnZS91YXMtZGV0ZWN0
LmguYmFja3VwCTIwMjEtMDMtMDUgMTE6MzY6MDAuNTE3NDIzNzI2ICswMTAwDQo+ID4gPj4gKysr
IGxpbnV4LTUuMTEvZHJpdmVycy91c2Ivc3RvcmFnZS91YXMtZGV0ZWN0LmgJMjAyMS0wMy0wNSAx
MTozNjoxNi4zNzM0MjQ1NDQgKzAxMDANCj4gPiA+PiBAQCAtMTEzLDggKzExMyw0IEBADQo+ID4g
Pj4gCX0NCj4gPiA+PiANCj4gPiA+PiAtCS8qIEFsbCBTZWFnYXRlIGRpc2sgZW5jbG9zdXJlcyBo
YXZlIGJyb2tlbiBBVEEgcGFzcy10aHJvdWdoIHN1cHBvcnQgKi8NCj4gPiA+PiAtCWlmIChsZTE2
X3RvX2NwdSh1ZGV2LT5kZXNjcmlwdG9yLmlkVmVuZG9yKSA9PSAweDBiYzIpDQo+ID4gPj4gLQkJ
ZmxhZ3MgfD0gVVNfRkxfTk9fQVRBXzFYOw0KPiA+ID4+IC0NCj4gPiA+PiAJdXNiX3N0b3JfYWRq
dXN0X3F1aXJrcyh1ZGV2LCAmZmxhZ3MpOw0KPiA+ID4gDQo+ID4gPiBJIGRvbid0IHdhbnQgdG8g
ZG8gdGhpcyB1bmxlc3MgeW91IGNhbiBzdWdnZXN0IGFuIGFwcHJvYWNoIHRoYXQgd29uJ3QgDQo+
ID4gPiBzdWRkZW5seSBicmVhayBhbGwgdGhvc2Ugb2xkIGJ1Z2d5IGRyaXZlcy4gIEp1c3QgYmVj
YXVzZSB0aGV5IGFyZSBub3cgDQo+ID4gPiBmaXZlIHllYXJzIG9sZCBvciBtb3JlIGRvZXNuJ3Qg
bWVhbiB0aGV5IGFyZSBubyBsb25nZXIgaW4gdXNlLg0KPiA+IA0KPiA+IFdlbGwsIHdoYXQgZG8g
eW91IHByb3Bvc2UgdGhlbj8gQSBhbGxvdyBxdWlyayBmb3IgYWxsIG5ldyBkZXZpY2VzIGdvaW5n
IGZvcndhcmQ/DQo+ID4gR2l2ZW4gdGhhdCB0aGUgdXNlciB1c3VhbGx5IG5lZWRzIHRvIGFjdGl2
ZWx5IHJ1biBzb21ldGhpbmcgbGlrZSBzbWFydGN0bA0KPiA+IG1hbnVhbGx5IG9uIHRoZSBkcml2
ZSBJIGRvbuKAmXQgc2VlIHRoYXQgdGhpcyBzaG91bGQgY2F1c2UgdG9vIG1hbnkgaXNzdWVzLg0K
PiA+IEkgZG9u4oCZdCBoYXZlIGFueSBub24tc3VwcG9ydGluZyBkZXZpY2UgLSBjYW4gd2Ugbm90
IGp1c3QgYWRkIHRoZW0gdG8gdGhlDQo+ID4gcXVpcmsgbGlzdCB3aGVuIHNvbWVvbmUgcmVwb3J0
cyBvbmU/DQo+IA0KPiBIb3cgYWJvdXQgc2luY2UgeW91IGtub3cgeW91ciBkZXZpY2Ugd29ya3Ms
IHlvdSBtYWtlIHRoZSBjaGVjayBkZXRlY3QNCj4geW91ciBzcGVjaWZpYyBkZXZpY2UgYW5kIG5v
dCBhcHBseSB0aGUgZmxhZyB0byBpdD8gIFlvdSBzaG91bGQgYmUgYWJsZQ0KPiB0byBkbyBzbyBi
YXNlZCBvbiB0aGUNCg0KU3VyZSwgd2hpbGUgdGhhdCBkb2VzIG5vdCByZWFsbHkgc29sdmUgdGhp
cyBmb3IgYWxsIHRoZSBvdGhlciBuZXdlcg0KU2VhZ2F0ZSBkcml2ZXMgb3RoZXIgdXNlcnMgbWln
aHQgaGF2ZSBhdCBob21lLCBoZXJlIGlzIGEgcGF0Y2gNCmNoZWNraW5nIGZvciB0aGlzIG9uZSBV
U0IgcHJvZHVjdCBJRC4gSSBob3BlIHRoYXQgaXMgd2hhdCB5b3UgbWVhbnQ6DQoNClNpZ25lZC1v
ZmYtYnk6IFJlbsOpIFJlYmUgPHJlbmVAZXhhY3Rjb2RlLmNvbT4NCg0KLS0tIGxpbnV4LTUuMTEv
ZHJpdmVycy91c2Ivc3RvcmFnZS91YXMtZGV0ZWN0LmguYmFja3VwCTIwMjEtMDMtMDUgMTE6MzY6
MDAuNTE3NDIzNzI2ICswMTAwDQorKysgbGludXgtNS4xMS9kcml2ZXJzL3VzYi9zdG9yYWdlL3Vh
cy1kZXRlY3QuaAkyMDIxLTAzLTA1IDExOjM2OjE2LjM3MzQyNDU0NCArMDEwMA0KQEAgLTExMyw1
ICsxMTMsNiBAQA0KIA0KIAkvKiBBbGwgU2VhZ2F0ZSBkaXNrIGVuY2xvc3VyZXMgaGF2ZSBicm9r
ZW4gQVRBIHBhc3MtdGhyb3VnaCBzdXBwb3J0ICovDQotCWlmIChsZTE2X3RvX2NwdSh1ZGV2LT5k
ZXNjcmlwdG9yLmlkVmVuZG9yKSA9PSAweDBiYzIpDQorCWlmICgobGUxNl90b19jcHUodWRldi0+
ZGVzY3JpcHRvci5pZFZlbmRvcikgPT0gMHgwYmMyKSAmJg0KKwkgICAgKGxlMTZfdG9fY3B1KHVk
ZXYtPmRlc2NyaXB0b3IuaWRQcm9kdWN0KSAhPSAweGFiMDMpKQ0KIAkJZmxhZ3MgfD0gVVNfRkxf
Tk9fQVRBXzFYOw0KIA0KDQotLSANCiAgUmVuw6kgUmViZSwgRXhhY3RDT0RFIEdtYkgsIExpZXR6
ZW5idXJnZXIgU3RyLiA0MiwgREUtMTA3ODkgQmVybGluDQogIGh0dHBzOi8vZXhhY3Rjb2RlLmNv
bSB8IGh0dHBzOi8vdDJzZGUub3JnIHwgaHR0cHM6Ly9yZW5lLnJlYmUuZGUNCg==
