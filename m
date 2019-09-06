Return-Path: <usb-storage+bncBDMYPB44VAFRBTPLZDVQKGQETNQKS4I@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-vk1-xa47.google.com (mail-vk1-xa47.google.com [IPv6:2607:f8b0:4864:20::a47])
	by mail.lfdr.de (Postfix) with ESMTPS id 05FFCAB5D7
	for <lists+usb-storage@lfdr.de>; Fri,  6 Sep 2019 12:32:47 +0200 (CEST)
Received: by mail-vk1-xa47.google.com with SMTP id f27sf1102210vkl.22
        for <lists+usb-storage@lfdr.de>; Fri, 06 Sep 2019 03:32:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567765965; cv=pass;
        d=google.com; s=arc-20160816;
        b=MuPgdz0at4PvjXbzd/dOnKA1qxFOnUTjajC7kJxg2ZoEV5/m4VH/rxfmp0PV9vLem1
         G7mlbvUu2cb5JBuovaoXvxVWz/WuvxEcGTdcfyriNNGCWktZg+T1Y+xJmcarSPHMNE6z
         wpzhoVmWdAlT1TAZ0X781cm99VsmAX0ULBClZhTWoCD0hzLEwNOc2iE65u32XJWp56zR
         8ZC4cpL/SKmk7aFqtK2Uc5EaiEfiAKR7qv9ER7fe04jaPqaBXHo6sL+HqIGIyMZDqMTe
         L2nqk9X95iOSW6R3mkIcmmPBn5C8VtyZLiMNCcpIVVlihvkQ/YKeD5orEYJWAdKy/E8M
         LHpw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=P25UIkREa8Psu25+B5nhiIF5ofrojH636QCqu37dNZE=;
        b=kvAJ8r0pLILpGLsVmC9+hKHoKGVrixhLlrRItHRix7HSKNcMpWL0TW52BNyQghj5o0
         hmlLhBUOjRv77O4nqrH469L/6WSu1ukficmiO0HOzkLTGibZGjoGqEy+274quQx5MobG
         AgirutqYfhM0tjtcb8Auw+v1+WBVZCa3HPm0p68ijlnur0YdoszKo3cTuHogiW1lmry7
         jErNYMUTUJXS3I3kV4rplICanOri7wUzjFzfGiYEQTmNqzOw+ft9ny0nCwwHMjynsdpO
         iapjd4J6efK5p7THKtsa6EWcxLwmHSQreuUB6uC0v6R3SxQVUkG+VL8TgSifrUS6qBTF
         Uwtg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=C6Jr4bas;
       spf=pass (google.com: domain of 3zdvyxqgkapeftxggbvazhhzex.vhf@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=3zDVyXQgKAPEfTXggbVaZhhZeX.Vhf@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=P25UIkREa8Psu25+B5nhiIF5ofrojH636QCqu37dNZE=;
        b=W3N9cJouRzJbj7mVM1jjMB+wkq+Tvu7nokYKifEpyJTHRSe8DSuhGoYcUHIo0oeXdo
         bqZQ03vvaY/TKx9u3VjLRZOcuMEUF+Inb+iQN9iTjrIQGX4Gz8pEoI4N3VHR7HRo5buQ
         Kv0I0xj8t4dHU0e+j938qb14RdDKQz3tTEwyo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=P25UIkREa8Psu25+B5nhiIF5ofrojH636QCqu37dNZE=;
        b=Xg4EmpSJ3kU9KnanBLSk0v28ShbvpQLIMme0Kgzwb2kWxeHddlpYuL2nrTBhp5gL+K
         KApDmwbSxOzilSje++hUvY7ByoWiBXypQXnNyTcaOTK07bDJAKZkq5vet95kA/Jsl7Ex
         U94QSU7w3KH8YBsHlAuQ7HJcjxp8uwOP9vhwhQF4X9bolu1BGO05gVGK1X0tRLnLouRR
         rvhB5Nmc12LtqxK6FX1ophhwh+B9rPyOUCbSEm9PQs9gpnJgUrUVi8u4J4GHCxdnwtBq
         wruu+Q8fOTGtIqUq4IawM80Tak4ei+mEOuLtkBxlp6vaeuq/SXACZykxyq61u/5aZg8D
         MU0Q==
X-Gm-Message-State: APjAAAUkcbnG0bM4CCiQKyzJrb1TGSH4XcZRrDTEgIpXxxaWLgUAEHas
	osD4OCLAEY4JHWBl0KVG31/GTg==
X-Google-Smtp-Source: APXvYqxFdnxyvp5pf1s+YB6XR4hrMtcdq+K/LoZWVq3+xXCb/2iCZZ3yJBiD2tmz2+tqXGBZKCOvuw==
X-Received: by 2002:ab0:210f:: with SMTP id d15mr3936670ual.129.1567765965635;
        Fri, 06 Sep 2019 03:32:45 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a67:c485:: with SMTP id d5ls575814vsk.13.gmail; Fri, 06 Sep
 2019 03:32:45 -0700 (PDT)
X-Received: by 2002:a05:6102:486:: with SMTP id n6mr4481946vsa.106.1567765965394;
        Fri, 06 Sep 2019 03:32:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567765965; cv=none;
        d=google.com; s=arc-20160816;
        b=kb5jjI1g38ji280Cbw/SqfS1gi63N2va2uQh+mrvBOsQDyzrvVT0cfHL3TI5KEI5X0
         mBgwhh3l7NJst7+2YbEhJQ9bBmiK3AoJiL56mTQgi6OyxxFMS/ZFqyn3a+cLANynipuC
         0u1sJa5Phc0GvuJiwNThXN3Oc7rrfqBfVDVM8jQD/k/Hy9CDBULnQ8h7RFnJZzjqoiGS
         q0MLL5lffqXOgwy/U7xJyYvDlgtTYKKQ1/6fL02zi0l1KPzlYqILcHXLQSkumARhypG7
         5y0RLPBC4I8irmwMjUW3tqYo+0E1w+LjDXP5o6g5038pLXhzZ0ZeBjSF0DmfJo4t8UHr
         BhYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=XfkuPAzUg0cWTsSII8UxfvUGODgh66Dt0PdffmfP8ds=;
        b=mIxQ/xNzrgsvYZvrukopeACPSUyS7P2/u+LkBB7T7bX6AHbwyUXWgpkC7eLqN8JgS2
         JX5VhRsxsL43ZFhIibkwVbiBRkircoUpIlT0E9CUVClAnvdDIsQ64+lDCBjgORM4e2U7
         2eSDzXVYQCNAXvXvqRcB40/SdKfhKypLj9yMyuW5Ujh91dsBGarD+8fYygPnvj8XY9wd
         F4y2k9ZB4Ch8YMLpnmgN3qOFP7QQlAK5QGIGpS1HmFr2lrZQ37btWmUXcU/rMzYVpRDO
         pBmdrNAK2i/PO+Nf/tTGm7pSZOQQJKTlNeYEnJSq8N6ZDeTDUpP5HM3LGpAVO5GgGdRb
         PfnA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=C6Jr4bas;
       spf=pass (google.com: domain of 3zdvyxqgkapeftxggbvazhhzex.vhf@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) smtp.mailfrom=3zDVyXQgKAPEfTXggbVaZhhZeX.Vhf@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f73.google.com (mail-sor-f73.google.com. [209.85.220.73])
        by mx.google.com with SMTPS id t14sor1416092vkm.45.2019.09.06.03.32.45
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Fri, 06 Sep 2019 03:32:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3zdvyxqgkapeftxggbvazhhzex.vhf@flex--maennich.bounces.google.com designates 209.85.220.73 as permitted sender) client-ip=209.85.220.73;
X-Received: by 2002:a1f:a3d8:: with SMTP id m207mr3707720vke.49.1567765964933;
 Fri, 06 Sep 2019 03:32:44 -0700 (PDT)
Date: Fri,  6 Sep 2019 11:32:25 +0100
In-Reply-To: <20190906103235.197072-1-maennich@google.com>
Message-Id: <20190906103235.197072-2-maennich@google.com>
Mime-Version: 1.0
References: <20180716122125.175792-1-maco@android.com> <20190906103235.197072-1-maennich@google.com>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [usb-storage] [PATCH v5 01/11] module: support reading multiple
 values per modinfo tag
From: "'Matthias Maennich' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: linux-kernel@vger.kernel.org
Cc: kernel-team@android.com, maennich@google.com, arnd@arndb.de, 
	gregkh@linuxfoundation.org, jeyu@kernel.org, joel@joelfernandes.org, 
	lucas.de.marchi@gmail.com, maco@android.com, sspatil@google.com, 
	will@kernel.org, yamada.masahiro@socionext.com, linux-kbuild@vger.kernel.org, 
	linux-modules@vger.kernel.org, linux-usb@vger.kernel.org, 
	usb-storage@lists.one-eyed-alien.net
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maennich@google.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=C6Jr4bas;       spf=pass
 (google.com: domain of 3zdvyxqgkapeftxggbvazhhzex.vhf@flex--maennich.bounces.google.com
 designates 209.85.220.73 as permitted sender) smtp.mailfrom=3zDVyXQgKAPEfTXggbVaZhhZeX.Vhf@flex--maennich.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Matthias Maennich <maennich@google.com>
Reply-To: Matthias Maennich <maennich@google.com>
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

Similar to modpost's get_next_modinfo(), introduce get_next_modinfo() in
kernel/module.c to acquire any further values associated with the same
modinfo tag name. That is useful for any tags that have multiple
occurrences (such as 'alias'), but is in particular introduced here as
part of the symbol namespaces patch series to read the (potentially)
multiple namespaces a module is importing.

Reviewed-by: Joel Fernandes (Google) <joel@joelfernandes.org>
Reviewed-by: Martijn Coenen <maco@android.com>
Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Matthias Maennich <maennich@google.com>
---
 kernel/module.c | 17 +++++++++++++++--
 1 file changed, 15 insertions(+), 2 deletions(-)

diff --git a/kernel/module.c b/kernel/module.c
index 9ee93421269c..3ee507c0a92f 100644
--- a/kernel/module.c
+++ b/kernel/module.c
@@ -2481,7 +2481,8 @@ static char *next_string(char *string, unsigned long *secsize)
 	return string;
 }
 
-static char *get_modinfo(struct load_info *info, const char *tag)
+static char *get_next_modinfo(const struct load_info *info, const char *tag,
+			      char *prev)
 {
 	char *p;
 	unsigned int taglen = strlen(tag);
@@ -2492,13 +2493,25 @@ static char *get_modinfo(struct load_info *info, const char *tag)
 	 * get_modinfo() calls made before rewrite_section_headers()
 	 * must use sh_offset, as sh_addr isn't set!
 	 */
-	for (p = (char *)info->hdr + infosec->sh_offset; p; p = next_string(p, &size)) {
+	char *modinfo = (char *)info->hdr + infosec->sh_offset;
+
+	if (prev) {
+		size -= prev - modinfo;
+		modinfo = next_string(prev, &size);
+	}
+
+	for (p = modinfo; p; p = next_string(p, &size)) {
 		if (strncmp(p, tag, taglen) == 0 && p[taglen] == '=')
 			return p + taglen + 1;
 	}
 	return NULL;
 }
 
+static char *get_modinfo(const struct load_info *info, const char *tag)
+{
+	return get_next_modinfo(info, tag, NULL);
+}
+
 static void setup_modinfo(struct module *mod, struct load_info *info)
 {
 	struct module_attribute *attr;
-- 
2.23.0.187.g17f5b7556c-goog

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190906103235.197072-2-maennich%40google.com.
