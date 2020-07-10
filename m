Return-Path: <usb-storage+bncBCCL7Q422UBBBRVLUP4AKGQERSICQGQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x547.google.com (mail-pg1-x547.google.com [IPv6:2607:f8b0:4864:20::547])
	by mail.lfdr.de (Postfix) with ESMTPS id F13BF21BECC
	for <lists+usb-storage@lfdr.de>; Fri, 10 Jul 2020 22:55:35 +0200 (CEST)
Received: by mail-pg1-x547.google.com with SMTP id s1sf4949371pgq.10
        for <lists+usb-storage@lfdr.de>; Fri, 10 Jul 2020 13:55:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594414534; cv=pass;
        d=google.com; s=arc-20160816;
        b=xaFaCdLm0/1ZR9oM5wPKf0xy/EtFUwWRKAMlLXn+1iu65X4ZuIWwJscdrPqA/jl+Wr
         Fg07srxKr/WObWcdzACE7ilob1AJUKl3IRQMXdnUn0j4TukMHOF2r24D4YjuMb1Xd0Qt
         JsqjklMm1lre4VDChkSCWefStpDUQaPtDA4JDoxv9W0Uwgxi/TBTFuF4GDD0wcFJW+8J
         3opsBM6UiojSnMWzliBfeKL8mZwGvc9XyH1Y6L92eMGwFFw5bKw/tz9bJvvFXhq+jIPK
         oNT48ktWTjVy+HxO5VY+NcvlSu0tQ9Q2IyExTehsqegQ666H9cS6BUH40geRKHJnxcQt
         uYaA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=x/qnXomIr/M51K5Sob0LBdlPGNFGv2410WydfqvrTPQ=;
        b=XaRKnYeA55JkRgqi4KhaU20IRBsq2/8tFDxJZvHf9gO4ARDUCWuVIWQdcuKA5UilUH
         cqt3yth7SxG8OYaYMFmkuEs+3enDvXIbF0vuq6qS4671ZF41x0zgs8adx8LF9Y9TO3AN
         tlpnilaEO7Zh7ji7AMxOUzOwWMARHkdNVKBijp6fj38qtpaE5k7Nx7caf9s/HBnmL5mt
         yKxJWwop4WaPcEBrmiw0IaDd3Ri7NlQBFunacWfcpOIQv1EqRh9pzAEeILPmee5Re/bf
         yUpA3PPIPuye1y1oQ7jxY6u8/lP7ceMAwJqUj5E0lLx+Bgsr71VX0iyfN11mAukO1UOL
         SCMQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vFx9IzyV;
       spf=pass (google.com: domain of shorne@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=shorne@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=x/qnXomIr/M51K5Sob0LBdlPGNFGv2410WydfqvrTPQ=;
        b=Ov0oLecMz19Z4gT/SwMi17Cv5NycPKCrgTjn9UVounjzDUA4Tu2dDS/8HFaMVikNVS
         fpTwqqczwDjzDNKy6I3zcOm4vsdTRj1fGylfVmfpiNeunCzHAkLqM1FXwXw6ZsIF3xJG
         /syX6naW8SKcT/cx5R7ExyCvi9gxkYp3XlTVc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=x/qnXomIr/M51K5Sob0LBdlPGNFGv2410WydfqvrTPQ=;
        b=ahhb9mEGrVN+9/vBb3iYEGpT3Xurq2arPWkyjHlMJo8F/vTKpx8e/FmHBWDINtME6O
         fbJq4LP65Jr93wKPgt1qoAEoQGCZUhQ1WeMJWCYgt+Sk4T4/TE5rYg1YPUPljU/epBaW
         8ljHxoTxOzZF2uXhH3ADzkFslb3Mh+fU2V2JOKSqmzr3eAQEOipiiXC3PVjIN70aKWYU
         EzrQzoOZiYpcsqgO9erU8ETaeeoWQgKG8vvDFNTUTY3XH+xtYgyR5ooEDHdXnO2s8ZxY
         Nv7csN4diM3xQsjIdvqi6YDXnWEhWnsiTlRX8y3eV7L1Vca2A76WtqV7sJxb3euLfnJb
         K71w==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM530E/8n9c8mQH73p8ORlYmKo9vE0j9OMmZXVaEU7C0V4SyUPY023
	3tXf2k1+1CZTM6dGELccCRYriQ==
X-Google-Smtp-Source: ABdhPJwQUgJAm5UIEhkMkDwsPvNlkCC4Pns/M6FBlIm2kRr/vYW3UTPoqcJS97vE4plw+PToU5yaGA==
X-Received: by 2002:a63:7f5d:: with SMTP id p29mr59531169pgn.259.1594414534241;
        Fri, 10 Jul 2020 13:55:34 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aa7:8421:: with SMTP id q1ls476025pfn.8.gmail; Fri, 10 Jul
 2020 13:55:33 -0700 (PDT)
X-Received: by 2002:aa7:818e:: with SMTP id g14mr60095942pfi.27.1594414533744;
        Fri, 10 Jul 2020 13:55:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594414533; cv=none;
        d=google.com; s=arc-20160816;
        b=vrhdcQ43zhbEFqLRBZC/WFRZvFO/NuVfcKnTstP7mU3cT3ko5f0mFY7XL2K9ngDlHk
         PLrykd1Px3glXw00tCQiS+g6QW/y4Cbm2go74AFeAvuVjEr/2MOYKv5eX+M1sTGSsqFA
         OcxlXNUa5BHWxWV792paxlRTqwnuUoPcyH2Za2s3yaItEgYWqtSDV/z3E9eZ247yb/lG
         Ovc2tgXP2fsnY3Hh5jrj2TR9NSULVTRVRwjV9gT7MCh5EeGSK3RJ7qC/JJkYFR+uXahB
         I2kuyIIUwqB5ffRN2z3yX2OnOJsLsG8dV8WICYa5tOmD6UmPtuCbSAaPnHMz4FfK5P9Q
         HA7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=/IeedtVo9DeN49CtT7pbMYwdvgsRdStvloLi91WmBE0=;
        b=o2LgBVmWDnIAmKlS6/YGd1mMrU4ym93g0TuS5v3ft+cXhwBshE6mMw+MR5fhw5XVAI
         su0r29ajQyz2aZFb+JZjNRX3ShNw8z7KFEDIhiyWaopMfe4INsLWUsA+yxfXoO9n/E5B
         UFtq+3vrJO/vT8h1CsA8f96DX++MtnzrutANtyv8MOo2m27V76A7S3ewi4m+haVNFxLc
         uikOi0p2DtlaCl9xLDAA26CxoeUYiegLPyWaa2BDjUJxvLCG+6RQYqoKaV6BlVOVLsRd
         f81l+gEWtCVC3snJ1P6WqLQA18Xhetfk4bj9ofz9UEzeZaYydFdfDGgNrW6V8KHFP7un
         B/zA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vFx9IzyV;
       spf=pass (google.com: domain of shorne@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=shorne@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id y2sor8852278pfy.33.2020.07.10.13.55.33
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Fri, 10 Jul 2020 13:55:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of shorne@gmail.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a62:cfc2:: with SMTP id b185mr29727550pfg.125.1594414533325;
        Fri, 10 Jul 2020 13:55:33 -0700 (PDT)
Received: from localhost (g175.219-103-161.ppp.wakwak.ne.jp. [219.103.161.175])
        by smtp.gmail.com with ESMTPSA id f14sm6488625pjq.36.2020.07.10.13.55.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jul 2020 13:55:32 -0700 (PDT)
Date: Sat, 11 Jul 2020 05:55:30 +0900
From: Stafford Horne <shorne@gmail.com>
To: "Alexander A. Klimov" <grandmaster@al2klimov.de>
Cc: Greg KH <gregkh@linuxfoundation.org>, stern@rowland.harvard.edu,
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
	David Miller <davem@davemloft.net>,
	Linus Torvalds <torvalds@linux-foundation.org>
Subject: [usb-storage] Re: [PATCH] Replace HTTP links with HTTPS ones: USB
 MASS STORAGE DRIVER
Message-ID: <20200710205530.GC437393@lianli.shorne-pla.net>
References: <20200708095500.13694-1-grandmaster@al2klimov.de>
 <20200708103928.GC585606@kroah.com>
 <6b78a3fd-04b9-fc8e-b5c6-f03372a4cd31@al2klimov.de>
 <20200709061409.GA130260@kroah.com>
 <20200710103621.GA437393@lianli.shorne-pla.net>
 <53342e1a-8430-2557-94c7-1da979a79e68@al2klimov.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <53342e1a-8430-2557-94c7-1da979a79e68@al2klimov.de>
X-Original-Sender: shorne@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=vFx9IzyV;       spf=pass
 (google.com: domain of shorne@gmail.com designates 209.85.220.65 as permitted
 sender) smtp.mailfrom=shorne@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Fri, Jul 10, 2020 at 09:36:03PM +0200, Alexander A. Klimov wrote:
>=20
>=20
> Am 10.07.20 um 12:36 schrieb Stafford Horne:
> > On Thu, Jul 09, 2020 at 08:14:09AM +0200, Greg KH wrote:
> > > On Wed, Jul 08, 2020 at 08:41:54PM +0200, Alexander A. Klimov wrote:
> > > >=20
> > > >=20
> > > > Am 08.07.20 um 12:39 schrieb Greg KH:
> > > > > On Wed, Jul 08, 2020 at 11:55:00AM +0200, Alexander A. Klimov wro=
te:
> > > > > > Rationale:
> > > > > > Reduces attack surface on kernel devs opening the links for MIT=
M
> > > > > > as HTTPS traffic is much harder to manipulate.
> > > > > >=20
> > > > > > Deterministic algorithm:
> > > > > > For each file:
> > > > > >     If not .svg:
> > > > > >       For each line:
> > > > > >         If doesn't contain `\bxmlns\b`:
> > > > > >           For each link, `\bhttp://[^# \t\r\n]*(?:\w|/)`:
> > > > > > 	  If neither `\bgnu\.org/license`, nor `\bmozilla\.org/MPL\b`:
> > > > > >               If both the HTTP and HTTPS versions
> > > > > >               return 200 OK and serve the same content:
> > > > > >                 Replace HTTP with HTTPS.
> > > > > >=20
> > > > > > Signed-off-by: Alexander A. Klimov <grandmaster@al2klimov.de>
> > > > >=20
> > > > > Your subject lines are very odd compared to all patches for this
> > > > > subsystem, as well as all other kernel subsystems.  Any reason yo=
u are
> > > > > doing it this way and not the normal and standard method of:
> > > > > 	USB: storage: replace http links with https
> > > > >=20
> > > > > That would look more uniform as well as not shout at anyone.
> >=20
> > I would agree.  The OpenRISC patch for this series says:
> >    "OPENRISC ARCHITECTURE:..."
> >=20
> > Here it would just be "openrisc:..." I think fixing the whole series is=
 needed.
> > Greg is not the only on complaining.
> >=20
> > Ideally, I think, it would be good to have this sent out as a series i.=
e [PATCH 3/55]
> > rather than individual patches so this could be discussed as a whole.
> 1) To who? As right now? As right now plus Torvalds, KH, Miller, etc.?
>    As right now, but all-to-all?

Make sure you have a cover letter explaining what you expect.

You can ask maintainers to pick up individual patches by mentioning that in=
 the
cover letter.

You can use `git send-email --cc-cmd` so each patch goes only to the
maintainers, for example:

  send-email --to linux-kernel@vger.kernel.org --cc-cmd scripts/get_maintai=
ners.pl`

> 2) Apropos "series" and "as whole"... I stumbled over

I stumble over "apropos". :)

>    `git log --oneline |grep -Fwe treewide`
>    and am wondering:
>    *Shouldn't all of these patches even begin with "treewide: "?*
>    E.g.: "treewide: Replace HTTP links with HTTPS ones: GCC PLUGINS"

As Greg said that is not what patch subjects loo like.

  - GCC PLUGINS: is not correct, remove it.
  - treewide: may work, but as you want individual maintainers to pick up t=
he patches put
    a subsystem in the subject as maintainers like.
  - The rest of the text should be lowercase "replace http links with https=
"

Have a look at other patch subject lines based on the file you are editing.=
  For example:

  $ git log --oneline -- Documentation/kbuild/gcc-plugins.rst
  2020-03-10 2b4cbd5c9505 Jonathan Corbet  docs: move gcc-plugins to the kb=
uild manual

  $ git log --oneline -- scripts/Makefile.gcc-plugins
  2019-03-04 81a56f6dcd20 Kees Cook        gcc-plugins: structleak: General=
ize to all variable types
  2018-12-29 668c35f69cc7 Linus Torvalds   Merge tag 'kbuild-v4.21' of git:=
//git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild
  2018-12-12 189af4657186 Ard Biesheuvel   ARM: smp: add support for per-ta=
sk stack canaries
  2018-12-01 ce2fd53a10c7 Masahiro Yamada  kbuild: descend into scripts/gcc=
-plugins/ via scripts/Makefile
  2018-09-04 10e9ae9fabaf Alexander Popov  gcc-plugins: Add STACKLEAK plugi=
n for tracking the kernel stack
  2018-07-24 7ccb95e8fe91 Kees Cook        gcc-plugins: Regularize Makefile=
.gcc-plugins
  2018-07-02 c17d6179ad5a Masahiro Yamada  gcc-plugins: remove unused GCC_P=
LUGIN_SUBDIR
  2018-06-11 59f53855babf Masahiro Yamada  gcc-plugins: test plugin support=
 in Kconfig and clean up Makefile
  2018-06-11 8034c2fb1225 Masahiro Yamada  gcc-plugins: move GCC version ch=
eck for PowerPC to Kconfig
  2018-06-11 5aadfdeb8de0 Masahiro Yamada  kcov: test compiler capability i=
n Kconfig and correct dependency


So you will have:

  docs: replace http links with https
  gcc-plugins: replace http links with https

-Stafford

> >=20
> > -Stafford
> >=20
> > > > > thanks,
> > > > >=20
> > > > > greg k-h
> > > > >=20
> > > > Hi,
> > > >=20
> > > > I'm very sorry.
> > > >=20
> > > > As Torvalds has merged 93431e0607e5 and many of you devs (including=
 big
> > > > maintainers like David Miller) just applied this stuff, I assumed t=
hat's OK.
> > > >=20
> > > > And now I've rolled out tens of patches via shell loop... *sigh*
> > > >=20
> > > > As this is the third (I think) change request like this, I assume t=
his rule
> > > > applies to all subsystems =E2=80=93 right?
> > >=20
> > > Yes, you should try to emulate what the subsystem does, look at other
> > > patches for the same files, but the format I suggested is almost alwa=
ys
> > > the correct one.  If not, I'm sure maintainers will be glad to tell y=
ou
> > > otherwise :)
> >=20
> >=20

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/20200710205530.GC437393%40lianli.sho=
rne-pla.net.
