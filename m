Return-Path: <usb-storage+bncBDBMLTW6VQDRBU47S2CAMGQEI6JOSHI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wr1-x447.google.com (mail-wr1-x447.google.com [IPv6:2a00:1450:4864:20::447])
	by mail.lfdr.de (Postfix) with ESMTPS id 4537F36A810
	for <lists+usb-storage@lfdr.de>; Sun, 25 Apr 2021 17:50:45 +0200 (CEST)
Received: by mail-wr1-x447.google.com with SMTP id f15-20020adffccf0000b02901028c7339ccsf17654997wrs.1
        for <lists+usb-storage@lfdr.de>; Sun, 25 Apr 2021 08:50:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619365844; cv=pass;
        d=google.com; s=arc-20160816;
        b=YwlrlCz8GnX3rduHdXMSAnx35XRoAG8kIkGLR/s06NDsBCShXARBsl3ciTmnSviaPS
         2Tz6yyEoG5Hue2dKDOS6KQviS3Z8hfnFF8Sx586r9cbjpusDbKNXskHwkTnz8OPRJIbe
         gxKmKFeXMaH6i0FLpZTeL3/tFUQuPhvqmQalXMDJkW6fqRj3j0HYt2L9Cp1CGAo+iCSF
         Yw0M05UeaZ93AN/C30y5iLkqMGRC1EtlOqkAs/y4/RYNEbF10z6ZnNtUnSA1ohuq6GHp
         mMhNjJYDTWvMqEtgZ5WQNAEM6HEZ2JvVOcAEGzJ74Ey5pFqQpvB3bbGNlG+QTNNJGrfj
         TQOg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:from:subject:cc:to:message-id
         :date:sender:dkim-signature;
        bh=cDx8RSgNsubkpsijf14o+cwAvRWx/YB1M5d31kh5Vok=;
        b=w3xnDQOolMrU7hPenUN9xAfd2wZlgcGCjeTrVksXDgNgMlnSeXNOfUvtIFXRGM+2pO
         GI/gmeS+kQQJvIDbT9GkNHCViQK8aQKzIqzVlFzOT+30TQNoiCPCsgIg0BWQl2RiTUei
         GctLdXVMxCK+yFc0aFwfmb5Pat4fsXoRQBI0gJ+DrmzH+kWFeujbFKuLhKWfnMyQX4A1
         wm0+mAeWZQPfCCAu0qYQtR6fwOt7Jm6WsPQg+EQTb7s4JXu9Jc6GtrYz3FqV/S1MnJ43
         eNE2cR8cgZgX2BGBuhXmFIcqN6i8IP41gUvyirPbYTFh8dmvqlCBZJxVYk0epKVdNjiX
         kIIw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@exactco.de header.s=x header.b=wlrEa7tT;
       spf=pass (google.com: domain of rene@exactcode.com designates 144.76.154.42 as permitted sender) smtp.mailfrom=rene@exactcode.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:message-id:to:cc:subject:from:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cDx8RSgNsubkpsijf14o+cwAvRWx/YB1M5d31kh5Vok=;
        b=PIu4nyMeBjVF+iD/c5jQlxsDzQjQ4HI2al4eUCgANt4TFcBd7d8NMBsRwuYOzp4qDn
         BIt6FqnuN8uNjm56asstxrotONcxCMW7aUML+ZqY3jDkFCunYLDqGq1fRgWAgeiggSsD
         QqrSRNUau8WflgIoCkmz1E39sn5vfkVFrJw5o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:message-id:to:cc:subject:from
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=cDx8RSgNsubkpsijf14o+cwAvRWx/YB1M5d31kh5Vok=;
        b=KSzyNo+OFt4vqi6lejXbmXPMvUh/S53rCa6I2L+POZQ7dhyzXKJEenDbthAykAxyCv
         cfcrKZtL5+8FaaFvnkpuMYEjxy07e6ClBwLQU492LkhMoqV2BiKSnc68Y4htukaGi5Cf
         Rirh8r97tZOWMUvH9TJgnidj9ozUlTGDG2LJyU/TogT8Ih/FyukqLLVPzXxZcjaQyCTi
         Xh73+HyvWkfk1iOp6l4q5bC1qLcKCvrx/XU7TLRgr2wxfwYGhSEgcWXd+Mqd6QVgahx4
         OkPwZFgec6cscNV4M5eP1I3akosge8I08uf5J3fQIyo+/Arw9o4dUIcI+EAlg5rHGqOV
         27+g==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM5320nkTCFxrpEXhzR3L5NV45goZGVBtNopR5m7mbEX9Xz6hMiMaz
	ieMA0a01MwCXr4acnv+ztCTykQ==
X-Google-Smtp-Source: ABdhPJxyN5DO+DS+wsCpKo0RO+aPh8O/Q/G3ZOmoxZRshqVekuK403L3xiLS99vpwk2OeLCvvySiPg==
X-Received: by 2002:a5d:6410:: with SMTP id z16mr18202168wru.40.1619365843945;
        Sun, 25 Apr 2021 08:50:43 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:600c:11:: with SMTP id g17ls6411396wmc.3.gmail; Sun, 25
 Apr 2021 08:50:42 -0700 (PDT)
X-Received: by 2002:a7b:c201:: with SMTP id x1mr14556542wmi.124.1619365842784;
        Sun, 25 Apr 2021 08:50:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619365842; cv=none;
        d=google.com; s=arc-20160816;
        b=bCGrTrzNC5ggNMLdRRhcBKN8lWzKymRDy1kdcEBmRxCaatyi63abetYKT/t14EDp3i
         DPUMj6MFNB7qj56tGcGmgCgueEuBBGfmGMIak+Lo91I6sqN4Iom/yv43/dgOrQlv53y5
         048jyyGPaZX50jTrT2eTyVtO1QB7z4LRutMbK60vqAUvnltSE0nEQIubeutBTbC67yen
         yrSY1Ckv504bJf5LOMoHAz0+HFkFG+LqqprfuNdoYT0XHEz4hafLAiMJDccpjPCElAoo
         NClVd5ZSMkt/cdO0lGOlz4xaLIPrXN7U2sMwxmDAPBeLC7j/D+rXE+KWF4KgDhgn1TRW
         29bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:from
         :subject:cc:to:message-id:date:dkim-signature;
        bh=cDx8RSgNsubkpsijf14o+cwAvRWx/YB1M5d31kh5Vok=;
        b=tFPPIn9mtmFYw6SWH2EeeEn79g/kFZfmLxpcdaTJemxD1tMHnJRc3XIFiypNhf2UdX
         khZBl2sa2ED2JmtEDoFJFo9l54P5vkEpPEE7wiC3St3A9JXmt+iAnHmGXFmxr5BWq9E5
         BOrU4lmChZk0f6mKnjpLfPPXow2ml3ofZDumjpCAhXMXVa5MfeF3cCqiqbPkt/SdW56q
         TeMfFcZyHcQlR+YhqC+YGIGyUNLMYQLbdW60bA4L1dm44BqkgAhpEL0+p5L10SXtAaxZ
         Zpzfdy6vdlUzx7AkyaFHSHPwhdDila0kxap7TpoTjKOlR5s0+bG0gTPQJga1aQcW2QbR
         8QHQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@exactco.de header.s=x header.b=wlrEa7tT;
       spf=pass (google.com: domain of rene@exactcode.com designates 144.76.154.42 as permitted sender) smtp.mailfrom=rene@exactcode.com
Received: from mx.exactcode.de (mx.exactcode.de. [144.76.154.42])
        by mx.google.com with ESMTPS id f16si16857166wmb.1.2021.04.25.08.50.42
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Apr 2021 08:50:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of rene@exactcode.com designates 144.76.154.42 as permitted sender) client-ip=144.76.154.42;
Received: from exactco.de ([90.187.5.221])
	by mx.exactcode.de with esmtp (Exim 4.82)
	(envelope-from <rene@exactcode.com>)
	id 1lah1z-0003q7-Cl; Sun, 25 Apr 2021 15:50:47 +0000
Received: from [192.168.2.131] (helo=localhost)
	by exactco.de with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.86_2)
	(envelope-from <rene@exactcode.com>)
	id 1lagyJ-0003tl-Mt; Sun, 25 Apr 2021 15:47:00 +0000
Date: Sun, 25 Apr 2021 17:50:05 +0200 (CEST)
Message-Id: <20210425.175005.2217483968766014768.rene@exactcode.com>
To: gregkh@linuxfoundation.org
Cc: hdegoede@redhat.com, stern@rowland.harvard.edu,
 linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH] unbreak all modern Seagate ATA pass-through
 for SMART
From: Rene Rebe <rene@exactcode.com>
In-Reply-To: <YIVgGdGbSpQ1norU@kroah.com>
References: <YIVZ2l9qUfkcyPpG@kroah.com>
	<20210425.141536.1295354861910527121.rene@exactcode.com>
	<YIVgGdGbSpQ1norU@kroah.com>
X-Mailer: Mew version 6.8 on Emacs 27.1
Mime-Version: 1.0
Content-Type: Text/Plain; charset=utf-8
Content-Transfer-Encoding: base64
X-Spam-Score: -0.5 (/)
X-Original-Sender: rene@exactcode.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@exactco.de header.s=x header.b=wlrEa7tT;       spf=pass
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

SGV5DQoNCkZyb206IEdyZWcgS0ggPGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPjoNCg0KPiA+
ID4gPiBTdWJqZWN0OiBSZTogW1BBVENIXSB1bmJyZWFrIGFsbCBtb2Rlcm4gU2VhZ2F0ZSBBVEEg
cGFzcy10aHJvdWdoIGZvciBTTUFSVA0KPiA+ID4gPiBEYXRlOiBTdW4sIDI1IEFwciAyMDIxIDEy
OjU4OjQwICswMjAwDQo+ID4gPiA+IA0KPiA+ID4gPiA+IEhpLA0KPiA+ID4gPiA+IA0KPiA+ID4g
PiA+IE9uIDQvMjUvMjEgMTI6NDcgUE0sIEhhbnMgZGUgR29lZGUgd3JvdGU6DQo+ID4gPiA+ID4g
PiBIaSwNCj4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gT24gNC8yNS8yMSAxMjo0MSBQTSwgUmVu
ZSBSZWJlIHdyb3RlOg0KPiA+ID4gPiA+ID4+IEdyZWcgS0ggd3JvdGU6DQo+ID4gPiA+ID4gPj4N
Cj4gPiA+ID4gPiA+Pj4gT24gU3VuLCBBcHIgMjUsIDIwMjEgYXQgMDk6MjA6NTlBTSArMDIwMCwg
UmVuw6kgUmViZSB3cm90ZToNCj4gPiA+ID4gPiA+Pj4+IEhleSwNCj4gPiA+ID4gPiA+Pj4+DQo+
ID4gPiA+ID4gPj4+Pj4gT24gMjUuIEFwciAyMDIxLCBhdCAwNDozMSwgQWxhbiBTdGVybiA8c3Rl
cm5Acm93bGFuZC5oYXJ2YXJkLmVkdT4gd3JvdGU6DQo+ID4gPiA+ID4gPj4+Pj4+IFNlYWdhdGUg
ZGV2aWNlcyIgaW4gMjAxNy4gQXBwYXJlbnRseSBzb21lIGVhcmx5IG9uZXMgd2hlcmUgYnVnZ3ks
IC4uLg0KPiA+ID4gPiA+ID4+Pj4+Pg0KPiA+ID4gPiA+ID4+Pj4+PiBIb3dldmVyLCBmYXN0IGZv
cndhcmQgYSBjb3VwbGUgb2YgeWVhcnMgYW5kIHRoaXMgaXMgbm8gbG9uZ2VyIHRydWUsDQo+ID4g
PiA+ID4gPj4+Pj4+IHRoaXMgU2VnYXRlIFNldmVuIGV2ZW4gaXMgYWxyZWFkeSBmcm9tIDIwMTYs
IGFuZCBhcHBhcmVudGx5IGZpcnN0DQo+ID4gPiA+ID4gPj4+Pj4+IGF2YWlsYWJsZSBpbiAyMDE1
LiBJIHN1Z2dlc3QgcmVtb3ZpbmcgdGhpcyByYXRoZXIgZHJhc3RpYyBnbG9iYWwNCj4gPiA+ID4g
PiA+Pj4+Pj4gbWVhc3VyZSwgYW5kIGluc3RlYWQgb25seSBhZGQgdmVyeSBvbGQgYnJva2VuIG9u
ZXMgd2l0aCBpbmRpdmlkdWFsDQo+ID4gPiA+ID4gPj4+Pj4+IHF1aXJrcywgc2hvdWxkIGFueSBv
ZiB0aGVtIHN0aWxsIGJlIGFsaXZlIDstKQ0KPiA+ID4gPiA+ID4+Pj4+Pg0KPiA+ID4gPiA+ID4+
Pj4+PiBTaWduZWQtb2ZmLWJ5OiBSZW7DqSBSZWJlIDxyZW5lQGV4YWN0Y29kZS5jb20+DQo+ID4g
PiA+ID4gPj4+Pj4+DQo+ID4gPiA+ID4gPj4+Pj4+IC0tLSBsaW51eC01LjExL2RyaXZlcnMvdXNi
L3N0b3JhZ2UvdWFzLWRldGVjdC5oLmJhY2t1cAkyMDIxLTAzLTA1IDExOjM2OjAwLjUxNzQyMzcy
NiArMDEwMA0KPiA+ID4gPiA+ID4+Pj4+PiArKysgbGludXgtNS4xMS9kcml2ZXJzL3VzYi9zdG9y
YWdlL3Vhcy1kZXRlY3QuaAkyMDIxLTAzLTA1IDExOjM2OjE2LjM3MzQyNDU0NCArMDEwMA0KPiA+
ID4gPiA+ID4+Pj4+PiBAQCAtMTEzLDggKzExMyw0IEBADQo+ID4gPiA+ID4gPj4+Pj4+IAl9DQo+
ID4gPiA+ID4gPj4+Pj4+DQo+ID4gPiA+ID4gPj4+Pj4+IC0JLyogQWxsIFNlYWdhdGUgZGlzayBl
bmNsb3N1cmVzIGhhdmUgYnJva2VuIEFUQSBwYXNzLXRocm91Z2ggc3VwcG9ydCAqLw0KPiA+ID4g
PiA+ID4+Pj4+PiAtCWlmIChsZTE2X3RvX2NwdSh1ZGV2LT5kZXNjcmlwdG9yLmlkVmVuZG9yKSA9
PSAweDBiYzIpDQo+ID4gPiA+ID4gPj4+Pj4+IC0JCWZsYWdzIHw9IFVTX0ZMX05PX0FUQV8xWDsN
Cj4gPiA+ID4gPiA+Pj4+Pj4gLQ0KPiA+ID4gPiA+ID4+Pj4+PiAJdXNiX3N0b3JfYWRqdXN0X3F1
aXJrcyh1ZGV2LCAmZmxhZ3MpOw0KPiA+ID4gPiA+ID4+Pj4+DQo+ID4gPiA+ID4gPj4+Pj4gSSBk
b24ndCB3YW50IHRvIGRvIHRoaXMgdW5sZXNzIHlvdSBjYW4gc3VnZ2VzdCBhbiBhcHByb2FjaCB0
aGF0IHdvbid0IA0KPiA+ID4gPiA+ID4+Pj4+IHN1ZGRlbmx5IGJyZWFrIGFsbCB0aG9zZSBvbGQg
YnVnZ3kgZHJpdmVzLiAgSnVzdCBiZWNhdXNlIHRoZXkgYXJlIG5vdyANCj4gPiA+ID4gPiA+Pj4+
PiBmaXZlIHllYXJzIG9sZCBvciBtb3JlIGRvZXNuJ3QgbWVhbiB0aGV5IGFyZSBubyBsb25nZXIg
aW4gdXNlLg0KPiA+ID4gPiA+ID4+Pj4NCj4gPiA+ID4gPiA+Pj4+IFdlbGwsIHdoYXQgZG8geW91
IHByb3Bvc2UgdGhlbj8gQSBhbGxvdyBxdWlyayBmb3IgYWxsIG5ldyBkZXZpY2VzIGdvaW5nIGZv
cndhcmQ/DQo+ID4gPiA+ID4gPj4+PiBHaXZlbiB0aGF0IHRoZSB1c2VyIHVzdWFsbHkgbmVlZHMg
dG8gYWN0aXZlbHkgcnVuIHNvbWV0aGluZyBsaWtlIHNtYXJ0Y3RsDQo+ID4gPiA+ID4gPj4+PiBt
YW51YWxseSBvbiB0aGUgZHJpdmUgSSBkb27igJl0IHNlZSB0aGF0IHRoaXMgc2hvdWxkIGNhdXNl
IHRvbyBtYW55IGlzc3Vlcy4NCj4gPiA+ID4gPiA+Pj4+IEkgZG9u4oCZdCBoYXZlIGFueSBub24t
c3VwcG9ydGluZyBkZXZpY2UgLSBjYW4gd2Ugbm90IGp1c3QgYWRkIHRoZW0gdG8gdGhlDQo+ID4g
PiA+ID4gPj4+PiBxdWlyayBsaXN0IHdoZW4gc29tZW9uZSByZXBvcnRzIG9uZT8NCj4gPiA+ID4g
PiA+Pj4NCj4gPiA+ID4gPiA+Pj4gSG93IGFib3V0IHNpbmNlIHlvdSBrbm93IHlvdXIgZGV2aWNl
IHdvcmtzLCB5b3UgbWFrZSB0aGUgY2hlY2sgZGV0ZWN0DQo+ID4gPiA+ID4gPj4+IHlvdXIgc3Bl
Y2lmaWMgZGV2aWNlIGFuZCBub3QgYXBwbHkgdGhlIGZsYWcgdG8gaXQ/ICBZb3Ugc2hvdWxkIGJl
IGFibGUNCj4gPiA+ID4gPiA+Pj4gdG8gZG8gc28gYmFzZWQgb24gdGhlDQo+ID4gPiA+ID4gPj4N
Cj4gPiA+ID4gPiA+PiBTdXJlLCB3aGlsZSB0aGF0IGRvZXMgbm90IHJlYWxseSBzb2x2ZSB0aGlz
IGZvciBhbGwgdGhlIG90aGVyIG5ld2VyDQo+ID4gPiA+ID4gPj4gU2VhZ2F0ZSBkcml2ZXMgb3Ro
ZXIgdXNlcnMgbWlnaHQgaGF2ZSBhdCBob21lLCBoZXJlIGlzIGEgcGF0Y2gNCj4gPiA+ID4gPiA+
PiBjaGVja2luZyBmb3IgdGhpcyBvbmUgVVNCIHByb2R1Y3QgSUQuIEkgaG9wZSB0aGF0IGlzIHdo
YXQgeW91IG1lYW50Og0KPiA+ID4gPiA+ID4+DQo+ID4gPiA+ID4gPj4gU2lnbmVkLW9mZi1ieTog
UmVuw6kgUmViZSA8cmVuZUBleGFjdGNvZGUuY29tPg0KPiA+ID4gPiA+ID4+DQo+ID4gPiA+ID4g
Pj4gLS0tIGxpbnV4LTUuMTEvZHJpdmVycy91c2Ivc3RvcmFnZS91YXMtZGV0ZWN0LmguYmFja3Vw
CTIwMjEtMDMtMDUgMTE6MzY6MDAuNTE3NDIzNzI2ICswMTAwDQo+ID4gPiA+ID4gPj4gKysrIGxp
bnV4LTUuMTEvZHJpdmVycy91c2Ivc3RvcmFnZS91YXMtZGV0ZWN0LmgJMjAyMS0wMy0wNSAxMToz
NjoxNi4zNzM0MjQ1NDQgKzAxMDANCj4gPiA+ID4gPiA+PiBAQCAtMTEzLDUgKzExMyw2IEBADQo+
ID4gPiA+ID4gPj4gIA0KPiA+ID4gPiA+ID4+ICAJLyogQWxsIFNlYWdhdGUgZGlzayBlbmNsb3N1
cmVzIGhhdmUgYnJva2VuIEFUQSBwYXNzLXRocm91Z2ggc3VwcG9ydCAqLw0KPiA+ID4gPiA+ID4+
IC0JaWYgKGxlMTZfdG9fY3B1KHVkZXYtPmRlc2NyaXB0b3IuaWRWZW5kb3IpID09IDB4MGJjMikN
Cj4gPiA+ID4gPiA+PiArCWlmICgobGUxNl90b19jcHUodWRldi0+ZGVzY3JpcHRvci5pZFZlbmRv
cikgPT0gMHgwYmMyKSAmJg0KPiA+ID4gPiA+ID4+ICsJICAgIChsZTE2X3RvX2NwdSh1ZGV2LT5k
ZXNjcmlwdG9yLmlkUHJvZHVjdCkgIT0gMHhhYjAzKSkNCj4gPiA+ID4gPiA+PiAgCQlmbGFncyB8
PSBVU19GTF9OT19BVEFfMVg7DQo+ID4gPiA+ID4gPj4gIA0KPiA+ID4gPiA+ID4+DQo+ID4gPiA+
ID4gPiANCj4gPiA+ID4gPiA+IEFzIEkgaW5kaWNhdGVkIGluIG15IG90aGVyIGVtYWlsIHdoaWNo
IGNyb3NzZWQgd2l0aCB0aGlzIG9uZSwgcGxlYXNlIG1ha2UgdGhpcw0KPiA+ID4gPiA+ID4gbW9y
ZSBnZW5lcmljLCBhZGQgYSBuZXcgVVNfRkxfQVRBXzFYX09LIGZsYWcgYW5kIG1ha2UgdGhlIGFi
b3ZlIGNvZGUgY2hlY2sgdGhhdCArDQo+ID4gPiA+ID4gPiBhZGQgYSBuZXcgdW51c3VhbF91YXMu
aCBlbnRyeSBmb3IgeW91ciBkZXZpY2Ugc2V0dGluZyB0aGUgbmV3IGZsYWcuDQo+ID4gPiA+ID4g
PiANCj4gPiA+ID4gPiA+IE5vdGUgdGhlcmUgaXMgbm8gbmVlZCB0byBhZGQgc3VwcG9ydCBmb3Ig
dGhlIG5ldyBmbGFnIHRvIHVzYl9zdG9yX2FkanVzdF9xdWlya3MoKQ0KPiA+ID4gPiA+ID4gaWYg
YSB1c2VyIG92ZXJyaWRlcyBxdWlya3MgZm9yIGEgZGV2aWNlIG9uIHRoZSBrZXJuZWwgY29tbWFu
ZGxpbmUgd2l0aG91dCBzcGVjaWZ5aW5nDQo+ID4gPiA+ID4gPiB0aGUgInQiIGZsYWcgdGhlbiB0
aGUgVVNfRkxfTk9fQVRBXzFYIGZsYWcgd2lsbCBhbHJlYWR5IGdldCBjbGVhcmVkLg0KPiA+ID4g
PiA+ID4gDQo+ID4gPiA+ID4gPiBJIGRlbGliZXJhdGVseSBwdXQgdGhlOg0KPiA+ID4gPiA+ID4g
DQo+ID4gPiA+ID4gPiAgICAgICAgIGlmIChsZTE2X3RvX2NwdSh1ZGV2LT5kZXNjcmlwdG9yLmlk
VmVuZG9yKSA9PSAweDBiYzIpDQo+ID4gPiA+ID4gPiAgICAgICAgICAgICAgICAgZmxhZ3MgfD0g
VVNfRkxfTk9fQVRBXzFYOw0KPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiBjb2RlIGJlZm9yZSB0
aGUgdXNiX3N0b3JfYWRqdXN0X3F1aXJrcygpIGNhbGwgdG8gYWxsb3cgdXNlcnMgdG8gb3ZlcnJp
ZGUgdGhpcw0KPiA+ID4gPiA+ID4gZnJvbSB0aGUga2VybmVsIGNvbW1hbmRsaW5lLg0KPiA+ID4g
PiA+IA0KPiA+ID4gPiA+IHAucy4NCj4gPiA+ID4gPiANCj4gPiA+ID4gPiBBICJnaXQgbG9nIGRy
aXZlcnMvdXNiL3N0b3JhZ2UvdW51c3VhbF91YXMuaCIgcXVpY2tseSBmaW5kcyB0aGUgY29tbWl0
IHdoaWNoIHJlbW92ZWQgdGhlDQo+ID4gPiA+ID4gcXVpcmtzIHdoaWNoIHRoZSBnZW5lcmljIFNl
YWdhdGUgY2hlY2sgcmVwbGFjZXMuIEF0IHRoYXQgdGltZSB0aGVyZSB3ZXJlIFVTX0ZMX05PX0FU
QV8xWA0KPiA+ID4gPiA+IHF1aXJrcyBmb3IgKjkqIGRpZmZlcmVudCBTZWFnYXRlIG1vZGVscyBw
cmVzZW50IGluIHVudXN1YWxfdWFzLmggYW5kIEkgYXNzdW1lIHNvbWVvbmUNCj4gPiA+ID4gPiBy
ZXBvcnRpbmcgYSAxMHRoIG1vZGVsIGlzIHdoYXQgbWFkZSBtZSBnbyBmb3IgdGhlIGp1c3QgZGlz
YWJsZSB0aGlzIGZvciBhbGwgU2VhZ2F0ZQ0KPiA+ID4gPiA+IGRyaXZlciBvcHRpb24uDQo+ID4g
PiA+ID4gDQo+ID4gPiA+ID4gU2VlIGNvbW1pdCA5MjMzNWFkOWU4OTUgKCJ1YXM6IFJlbW92ZSBV
U19GTF9OT19BVEFfMVggdW51c3VhbCBkZXZpY2UgZW50cmllcyBmb3IgU2VhZ2F0ZSBkZXZpY2Vz
IikNCj4gPiA+ID4gPiANCj4gPiA+ID4gPiBBbHNvIEkgZGlkIGEgcXVpY2sgd2Vic2VhcmNoIGZv
ciB0aGUgIlNlYWdhdGUgU2V2ZW4iIGFuZCByYXRoZXIgdGhlbiB0aGUgdXN1YWwgcmUtdXNhYmxl
DQo+ID4gPiA+ID4gZHJpdmUtZW5jbG9zdXJlIHdpdGggYSBzdGFuZGFyZCAyLjUiIG9yIDMuNSIg
ZHJpdmUgaW4gdGhlcmUsIHRoaXMgc2VlbXMgdG8gYmUgYSBjdXN0b20NCj4gPiA+ID4gPiBtb2Rl
bCB3aGVyZSB0aGUgZW5jbG9zdXJlIGlzIGFjdHVhbGx5IGludGVncmF0ZWQgaW50byB0aGUgZHJp
dmUgdG8gbWFrZSBpdCBzbWFsbGVyLg0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+IFNvIEkgd291bGQg
bm90IGJlIHN1cnByaXNlZCBpZiB0aGlzIGlzIHVzaW5nIGFub3RoZXIgY2hpcHNldCB0aGVuIHRo
ZWlyIHVzdWFsIGVuY2xvc3VyZXMsDQo+ID4gPiA+ID4gd2hpY2ggd291bGQgZXhwbGFpbiB3aHkg
aXQgZG9lcyBoYXZlIHdvcmtpbmcgQVRBMXggcGFzc3Rocm91Z2guDQo+ID4gPiA+IA0KPiA+ID4g
PiBJIHdvdWxkIGV4cGVjdCB0aGF0IG1vcmUgbW9kZXJuIGRldmljZXMgdG8gd29yay4gVmVuZG9y
cyB1c3VhbGx5DQo+ID4gPiA+IGxpbmVhcmx5IGFsbG9jYXRlIHRoZWlyIHByb2R1Y3QgaWRzIGZv
ciBuZXcgZGV2aWNlcywgYW5kIHdlIGNvdWxkDQo+ID4gPiA+IGFsbG93IGxpc3QgcHJvZHVjdCBp
ZHMgaGlnaGVyIHRoYW4gdGhpcyBTZXZlbiB0byB1bmJyZWFrIG1vcmUgbW9kZXJuDQo+ID4gPiA+
IGRldmljZXMgYnkgZGVmYXVsdCBhbmQgbGltaXQgdGhlIGFtb3VudCBvZiBkZXZpY2UgcXVpcmtz
IG5lZWRlZD8NCj4gPiA+IA0KPiA+ID4gVmVuZG9ycyBkbyBub3QgYWxsb2NhdGUgZGV2aWNlIGlk
cyB0aGF0IHdheSBhdCBhbGwsIGFzIHRoZXJlIGlzIG5vDQo+ID4gPiByZXF1aXJlbWVudCB0byBk
byBzby4gIEkga25vdyBvZiBtYW55IHZlbmRvcnMgdGhhdCBzZWVtaW5nbHkgdXNlIHJhbmRvbQ0K
PiA+ID4gdmFsdWVzIGZyb20gdGhlaXIgcHJvZHVjdCBpZCBzcGFjZSwgc28gdGhlcmUgaXMgbm8g
Z3VhcmFudGVlIHRoYXQgdGhpcw0KPiA+ID4gd2lsbCB3b3JrLCBzb3JyeS4NCj4gPiANCj4gPiBJ
IGRpZCBub3Qgc2F5IGl0IGlzIGEgcmVxdWlyZW1lbnQsIGp1c3QgdGhhdCB0aGV5IHVzdWFsbHkg
ZG8gc3BlYWtpbmcNCj4gPiBvZiBqdXN0IHRoaXMgU2VhZ2F0ZSBjYXNlLiBXaGF0IGlzIHdyb25n
IHdpdGggdXNpbmcgdGhhdCB0bw0KPiA+IHBvdGVudGlhbGx5IHNpZ25pZmljYW50bHkgY3V0IGRv
d24gdGhlIHF1aXJrIGxpc3Q/DQo+IA0KPiBCZWNhdXNlIHRoZSBkb3duLXNpZGUgb2YgdGhpcyBp
cyBpZiB3ZSBndWVzcyB3cm9uZywgd2UgYnJlYWsgdGhpbmdzLg0KPiANCj4gPiA+IFdoYXQgaXMg
d3Jvbmcgd2l0aCBqdXN0IGFsbG93aW5nIHNwZWNpZmljIGRldmljZXMgdGhhdCB5b3UgaGF2ZSB0
ZXN0ZWQNCj4gPiA+IHdpbGwgd29yaywgdG8gdGhlIGxpc3QgaW5zdGVhZD8gIFRoYXQncyB0aGUg
c2FmZXN0IHdheSB0byBoYW5kbGUgdGhpcy4NCj4gPiANCj4gPiBUaGUgcHJvYmxlbSBpcyB0aGF0
IG91dCBvZiB0aGUgYm94IGl0IGRvZXMgbm90IHdvcmsgZm9yIHVzZXJzLCBhbmQNCj4gPiBub3Jt
YWwgdXNlcnMgZG8gbm90IGRpdmUgaW50byB0aGUga2VybmVsIGNvZGUgdG8gZmluZCBvdXQgYW5k
IHNpbXBseQ0KPiA+IHRoaW5rIHRoZWlyIGRldmljZXMgc3Vja3MuIEV2ZW4gSSBmb3IgeWVhcnMg
dGhvdWdodCB0aGUgZHJpdmUgc3Vja3MsDQoNCk9rLCBzbyBJIHdlbnQgdGhlcmUgYW5kIHdhbnRl
ZCB0byBxdWlja2x5IGFkZCB0aGUgcmVxdWVzdGVkIDFYX09LDQp1bnVzdWFsIGZsYWcsIGJ1dXV1
dHQsIGFwcGFyZW50bHkgYWxsIDMyLWJpdHMgb2YgdGhlIFVTX0ZMQUcgZW51bSBpbg0KLi9pbmNs
dWRlL2xpbnV4L3VzYl91c3VhbC5oIGFyZSBhbHJlYWR5IGV4aGF1c3RlZCwgLi4uDQoNCldoYXQg
c2hvdWxkIHdlIGRvIG5vdz8gTWFrZSBpdCA2NC1iaXQgb3Igb3RoZXIgd29ya2Fyb3VuZCBzdWdn
ZXN0aW9ucz8NCk1heWJlIHJldmVydGluZyB0aGUgb3JpZ2luYWwgOSBibGFja2xpc3QgcmVtb3Zh
bHMgYWZ0ZXIgYWxsPw0KDQogICAgIFJlbsOpDQoNCi0tIA0KICBSZW7DqSBSZWJlLCBFeGFjdENP
REUgR21iSCwgTGlldHplbmJ1cmdlciBTdHIuIDQyLCBERS0xMDc4OSBCZXJsaW4NCiAgaHR0cHM6
Ly9leGFjdGNvZGUuY29tIHwgaHR0cHM6Ly90MnNkZS5vcmcgfCBodHRwczovL3JlbmUucmViZS5k
ZQ0K
