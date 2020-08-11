Return-Path: <usb-storage+bncBD6LRVPZ6YGRBWPJZP4QKGQE2W73HWI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-il1-x146.google.com (mail-il1-x146.google.com [IPv6:2607:f8b0:4864:20::146])
	by mail.lfdr.de (Postfix) with ESMTPS id 29C5F24207F
	for <lists+usb-storage@lfdr.de>; Tue, 11 Aug 2020 21:43:22 +0200 (CEST)
Received: by mail-il1-x146.google.com with SMTP id g6sf62933iln.2
        for <lists+usb-storage@lfdr.de>; Tue, 11 Aug 2020 12:43:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597175001; cv=pass;
        d=google.com; s=arc-20160816;
        b=FX50Js7uAI4UdSnLuXy4cptnQZIoYZekiN9BpBoO9iJ229f7AGH3uHTNGjcuTbvkG8
         iVDrEp436efTelyGhqexUsGsPBUXXUnLknVlzrI3rHOcHgjChVsmneoCQ0ISnso8C//g
         5o4rgMT1CWDRQ/MjKlu36fxrUuZIvbWezWDqgrcVeNXdhOGXN3igECKUR+EF2lQaNFxj
         iJR6EjtUSgl2hdEgCsgKcr1iLJD3fGLcTG7khOMm6rCP3aZp4FrKKuPbnOU5DHPVSeBw
         BWT5FNmfsGCCtdyHo9yVapUuazk/9BH+ULte0XtEedTov9DxdgotnI6z/KpnJuwRJm2z
         di+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=FuM2VCqPnsJtlSDcCxQtIEVMRBItscHjNZ/nPAr/ZVw=;
        b=c7m4qGN7e3pW+wP2JB2+cy6qAnKHzNAFuzEjxYjgYEcVAm8Fkiwnh+aMlW2ilG6URB
         chOzy0s+rvl6NZusTMH/menpl8q8AfVPurdx6NOy6Tbkrb61W8CUJknQhNohhd59liiw
         BsEtPKBIGwbF2a/N7u5xMrCVNpcWpiXKOR92hK5W+ooT9jdzZge4f8Eg739rY6CXQg2y
         muOpDDg1qNFuf5BZxKSO6BOGSsbmLWZbel4/F77OsQa7DuPAkMutKeWgmm6ScGosBxr3
         4+ML6INk/1D6039c5hMgKNKh+CcbBvwJwmk1+H44X2u9Sg/wsEVcI7CiB66x8jICB8WE
         5zdw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+5f3484ba@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+5f3484ba@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FuM2VCqPnsJtlSDcCxQtIEVMRBItscHjNZ/nPAr/ZVw=;
        b=RGYpeIsio1MF2BM0k+l0oG9URze4Wu1/MxvvM1hML+6U/hkB0HXgx6nXb/2V9yqLV/
         Tljiax5wZGMUiJDb/mqPCFUCXhZ+DDxxiJRBPPceuiTh3zsYJsobFa5iK1j0vsxDi1QY
         aXLwfxgQCLO/FKKa3H3ERaZZFx/QaBMCkmfKE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FuM2VCqPnsJtlSDcCxQtIEVMRBItscHjNZ/nPAr/ZVw=;
        b=NeBvyGxNQyg7oNboijwSfCqbzHCOVFj1nCO+wQwLfGigtPiJCG0DV5P+ekptgT+036
         nTcK+136tmmnkA/S1uwTjK+H8rbkoGXshWoMcbeTd1m1YJv+R6rIv6SHm2xPnyQuj1+s
         jw2hCV6m3+ORjET8lJ4nwAYUh69gVTSOi3RLu9gc+lsRZu3wPcZbDoTsKFyovLzcpAzI
         1c4qz8+0McsB7wsHBZ5oGb1+Z7jg7labT5lyGxK6FdbRrfG2O9DUfgL+rIolIlraAm3K
         TE9b/bVD+8sT0D5Tc1B5uilUiXP/4XB11zsaPShZPNvUgnOOglNhR1vJ6r3rPzxaDLNf
         XKZA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM533I58/eaLpwHkby1DklC+ciSr+x5E2mJQS9GXPmL+Zh69Sg+f4s
	VexCfAnDC/ZtomBtF82tzeNHsw==
X-Google-Smtp-Source: ABdhPJzQuFblefuIyIInUr7oFC+M/IZkJLG9/j1v0Y7iSqRpKc/qjou062+5blgs1p7WTHJGEIkstw==
X-Received: by 2002:a92:ad01:: with SMTP id w1mr25813856ilh.301.1597175001098;
        Tue, 11 Aug 2020 12:43:21 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a5e:9b0b:: with SMTP id j11ls3675559iok.2.gmail; Tue, 11 Aug
 2020 12:43:20 -0700 (PDT)
X-Received: by 2002:a5d:9d11:: with SMTP id j17mr24747742ioj.140.1597175000700;
        Tue, 11 Aug 2020 12:43:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597175000; cv=none;
        d=google.com; s=arc-20160816;
        b=Dcu607LeoG5WFF/ZKHBZqcc8C1un4aAsPkLlsSXxHDVbX7xIG1O1hiZr/UaTY5zarw
         bvsogwfXuZchMoRyImiHwm0v93dH+ZXHSxQZPVLz0RAFBfvmvloCb5N3yfIqPHWJQIoY
         V+d/3S42aj6muVnRcOqvqDQnMRoRadJA35Tx3MobZ81FdwE/Dq/j7CLKea81tQ1Rl4h5
         sJ1SE+8misVwY+vlbX+9QNnLhPUASJG4WivjMTMZtkLbTNTTch86qLsW90VHJL+PruJe
         IJKJTCDlxWUkSPmLxnX128rrFD71f4NYhSk6UGUfsE9qEil0K6gNVckIOEhXHR0pTkYW
         CgBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date;
        bh=QcT4droLiVrBm+iCY51P7DHwHTBeWX2sFLbbRd9QfEw=;
        b=bCS+COoK36fl0GJMWTkFucdF4YSyV8Sq+ZHWISSv/M38LgJ1uF+eKsFtfcWtUwrK8A
         lPe9QGBm8Le3RhmuxRwYerbakou2eWE2907MoXk4ITD9FzWK7vS2FM/gj7oTu3RsyWFg
         Y7xrG8ID+MyRk0ijjFNs8axu6Pi8ppL7lkbnawsOKQc5i5A6toGmUmebsK6+ZPaJ8Wrd
         ycdpPv1aHKYB8s7s07ZrEXFMLDCsaY3BB27suDeLnGvrG4CDP5jrzXpu+yDLflf9nK7t
         uoT+lHUuk4JfbmgKtrqXIUeyslr6lzUvh3HrWnQ1b7I2nvNoB7J+phdw5wcglen7egPL
         SW8w==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+5f3484ba@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+5f3484ba@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id g4si20426211ilh.77.2020.08.11.12.43.20
        for <usb-storage@lists.one-eyed-alien.net>;
        Tue, 11 Aug 2020 12:43:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+5f3484ba@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 345373 invoked by uid 1000); 11 Aug 2020 15:43:19 -0400
Date: Tue, 11 Aug 2020 15:43:19 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Tom Rix <trix@redhat.com>
Cc: gregkh@linuxfoundation.org, acozzette@cs.hmc.edu,
  linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
  linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [PATCH] USB: realtek_cr: fix return check for dma functions
Message-ID: <20200811194319.GB344152@rowland.harvard.edu>
References: <20200811151505.12222-1-trix@redhat.com>
 <20200811160348.GD335280@rowland.harvard.edu>
 <1f7d5a64-f264-4fed-bf90-b64e2693652d@redhat.com>
 <20200811175338.GB339805@rowland.harvard.edu>
 <c48fec19-fe2c-65c6-917b-8b8ba40e4c7e@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <c48fec19-fe2c-65c6-917b-8b8ba40e4c7e@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+5f3484ba@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+5f3484ba@netrider.rowland.org
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

On Tue, Aug 11, 2020 at 11:54:28AM -0700, Tom Rix wrote:
>=20
> On 8/11/20 10:53 AM, Alan Stern wrote:

> >>> Instead of changing all these call sites, wouldn't it be a lot easier=
=20
> >>> just to change rts51x_read_mem() to make it always return a negative=
=20
> >>> value (such as -EIO) when there's an error?
> >>>
> >>> Alan Stern
> >> I thought about that but there was already existing (retval !=3D=20
> >> STATUS_SUCCESS) checks for these calls.
> > The only values that routine currently returns are=20
> > USB_STOR_TRANSPORT_ERROR, -EIO, and 0.  None of the callers distinguish=
=20
> > between the first two values, so you can just change the first to the=
=20
> > second.
> >
> > Note that STATUS_SUCCESS is simply 0.
>=20
> Yes, i noted all of these already. My change is consistent with the=20
> existing correct checks.=C2=A0 consistency is important.=C2=A0 returning =
a neg=20
> value to reuse the exiting check should mean the STATUS_SUCCESS !=3D 0=20
> checks are changed to neg check.

Do you mean the "retval =3D=3D STATUS_SUCCESS" checks?  Those checks would=
=20
end up doing exactly the same thing as they do now, since=20
USB_STOR_TRANSPORT_ERROR and -EIO are both different from 0.

Yes, it is true that consistency is important.  But correctness is more=20
important than consistency.

>=C2=A0 i can do this larger change if=20
> required.

Let me put it this way: Suppose you changed the USB_STOR_TRANSPORT_ERROR=20
in rts51x_read_mem() to -EIO, without changing anything else.  Wouldn't=20
that fix the problem reported by the clang static analysis?  If not, why=20
not?

Alan Stern

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/20200811194319.GB344152%40rowland.ha=
rvard.edu.
