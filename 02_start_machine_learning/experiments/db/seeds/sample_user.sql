--
-- PostgreSQL database dump
--

\restrict l0LUkGVMvsYLa1kivaF7GZhr7gliqmCpbgVTwEOwPF0TRHUL2KW6Gy2JCF2mfFE

-- Dumped from database version 15.14
-- Dumped by pg_dump version 15.14

-- Started on 2025-09-04 22:02:08

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 3321 (class 0 OID 32769)
-- Dependencies: 214
-- Data for Name: sample_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sample_user (user_id, gender, age, country, city, exp_group, os, source) FROM stdin;
1	0	35	Russia	Moscow	4	Android	ads
2	1	21	Russia	Yalutorovsk	2	iOS	ads
3	0	45	Russia	Severodvinsk	0	Android	ads
4	1	38	Russia	Vetluga	3	Android	organic
5	0	22	Russia	Moscow	4	Android	ads
6	1	23	Russia	Slyudyanka	0	iOS	organic
7	0	29	Russia	Moscow	1	iOS	organic
8	1	61	Russia	Irkutsk	1	iOS	organic
9	1	39	Russia	Omsk	1	Android	organic
10	1	21	Russia	Moscow	1	iOS	ads
11	0	41	Russia	Shakhty	3	Android	organic
12	1	16	Russia	Ulyanovsk	3	iOS	organic
13	0	22	Russia	Novosibirsk	0	Android	ads
14	1	34	Russia	Noginsk	3	Android	organic
15	1	22	Russia	Rostov	0	Android	ads
16	0	18	Azerbaijan	Sumqayıt	4	Android	organic
17	1	28	Russia	Rostov	0	iOS	organic
18	1	15	Russia	Pavlovskiy Posad	3	iOS	ads
19	0	16	Russia	Omsk	3	iOS	ads
20	0	19	Russia	Dzerzhinsk	2	Android	ads
21	1	51	Russia	Leninsk-Kuznetskiy	4	Android	organic
22	0	35	Russia	Meleuz	1	Android	organic
23	0	28	Azerbaijan	M.Ə. Rəsulzadə	4	Android	ads
24	0	29	Russia	Tuymazy	0	iOS	ads
25	1	15	Latvia	Ikšķile	3	iOS	ads
26	0	34	Russia	Petropavlovsk-Kamchatskiy	4	iOS	organic
27	1	19	Russia	Zarechnyy	1	iOS	organic
28	0	44	Russia	Yurga	3	iOS	ads
29	1	34	Russia	Moscow	3	Android	ads
30	0	20	Russia	Bryansk	2	Android	ads
31	0	20	Russia	Izhevsk	2	Android	ads
32	0	22	Russia	Bryansk	3	Android	organic
33	1	52	Russia	Novorossiysk	1	iOS	ads
34	1	46	Ukraine	Nemyriv	2	Android	ads
35	1	16	Russia	Venëv	4	Android	ads
36	1	19	Russia	Ufa	3	iOS	ads
37	0	38	Russia	Aksay	1	iOS	organic
38	0	26	Russia	Volgograd	4	Android	ads
39	1	14	Russia	Kupino	4	Android	ads
40	0	15	Russia	Moscow	2	Android	ads
41	1	33	Russia	Moscow	0	Android	ads
42	0	21	Belarus	Asipovichy	1	Android	ads
43	0	24	Russia	Pavlovskiy Posad	1	iOS	organic
44	0	20	Russia	Pushkino	0	Android	ads
45	1	17	Belarus	Polatsk	2	iOS	ads
46	0	23	Russia	Tver	3	iOS	ads
47	0	37	Russia	Berëzovskiy	0	Android	ads
48	1	18	Russia	Naberezhnyye Chelny	4	iOS	ads
49	1	38	Russia	Losino-Petrovskiy	4	Android	organic
50	1	29	Russia	Novokuybyshevsk	4	iOS	ads
51	0	45	Russia	Nalchik	0	Android	ads
52	1	40	Russia	Saint Petersburg	4	Android	ads
53	1	22	Russia	Moscow	2	Android	ads
54	0	17	Russia	Vanino	4	iOS	ads
55	0	25	Russia	Moscow	3	Android	organic
56	1	29	Russia	Biysk	1	iOS	ads
57	1	17	Russia	Saint Petersburg	0	iOS	ads
58	0	27	Russia	Ulyanovsk	2	iOS	ads
59	1	18	Russia	Vizinga	1	Android	organic
60	0	59	Russia	Chelyabinsk	4	Android	organic
61	0	20	Russia	Moscow	3	iOS	ads
62	0	21	Russia	Ulan-Ude	4	Android	organic
63	1	45	Turkey	Istanbul	4	Android	ads
64	1	28	Russia	Gordeyevka	1	Android	organic
65	1	18	Russia	Pestovo	0	iOS	ads
66	1	21	Russia	Georgiyevsk	1	Android	ads
67	1	54	Ukraine	Kyiv	2	Android	organic
68	1	39	Russia	Kovrov	1	iOS	ads
69	0	31	Russia	Nizhniy Novgorod	2	iOS	organic
70	1	27	Russia	Vichuga	1	iOS	ads
71	0	43	Ukraine	Donetsk	3	Android	organic
72	0	17	Russia	Rostov	2	Android	organic
73	0	19	Russia	Moscow	3	iOS	organic
74	0	15	Russia	Chelyabinsk	4	iOS	ads
75	1	27	Russia	Barvikha	0	Android	ads
76	1	19	Russia	Labinsk	2	iOS	organic
77	1	19	Russia	Perm	1	Android	organic
78	0	23	Russia	Ufa	3	iOS	ads
79	1	20	Russia	Toguchin	3	Android	ads
80	0	25	Russia	Pervouralsk	0	Android	ads
81	1	16	Russia	Ryazan	2	Android	organic
82	1	17	Russia	Vladivostok	1	Android	organic
83	0	26	Kazakhstan	Esik	4	Android	ads
84	1	33	Ukraine	Zolotonosha	2	Android	organic
85	0	31	Russia	Saint Petersburg	2	iOS	ads
86	1	23	Russia	Yakutsk	4	Android	organic
87	1	16	Russia	Nizhniy Novgorod	4	Android	ads
88	0	21	Russia	Izhevsk	0	iOS	ads
89	1	26	Russia	Kaliningrad	4	Android	ads
90	0	38	Russia	Perm	3	iOS	ads
91	0	38	Russia	Murmansk	1	Android	organic
92	1	19	Russia	Novosibirsk	3	Android	ads
93	0	42	Russia	Novoshakhtinsk	3	Android	ads
94	1	17	Russia	Kimovsk	3	Android	organic
95	1	22	Ukraine	Kherson	2	Android	organic
96	0	23	Russia	Moscow	0	Android	ads
97	1	39	Russia	Yekaterinburg	1	Android	ads
98	0	21	Russia	Tambov	2	iOS	ads
99	0	25	Russia	Sterlitamak	2	iOS	ads
100	0	35	Azerbaijan	Gəncə	1	Android	organic
101	0	46	Russia	Tver	0	iOS	organic
102	1	17	Russia	Saint Petersburg	4	Android	ads
103	1	25	Russia	Izberbash	2	iOS	ads
104	0	21	Kazakhstan	Esik	3	Android	organic
105	1	22	Russia	Novouralsk	4	Android	ads
106	1	48	Russia	Velikiy Ustyug	1	Android	ads
955	0	18	Russia	Ishimbay	3	iOS	ads
107	0	31	Russia	Nizhnevartovsk	1	iOS	organic
108	0	21	Russia	Kotelniki	3	iOS	ads
109	1	23	Russia	Pskov	2	Android	ads
110	0	25	Russia	Moscow	4	Android	ads
111	0	30	Ukraine	Kozova	3	Android	organic
112	0	18	Russia	Ivanteyevka	2	Android	ads
113	0	26	Russia	Moscow	4	Android	organic
114	0	20	Russia	Shchelkovo	2	Android	ads
115	0	17	Russia	Armavir	1	Android	ads
116	1	23	Russia	Berezniki	2	Android	ads
117	0	24	Russia	Sochi	2	iOS	organic
118	0	18	Russia	Novocherkassk	1	iOS	ads
119	1	47	Russia	Ulyanovsk	3	Android	ads
120	0	31	Russia	Kazan	4	iOS	organic
121	1	25	Russia	Balashikha	4	Android	ads
122	0	32	Russia	Moscow	2	Android	ads
123	1	16	Russia	Moscow	2	iOS	ads
124	0	20	Russia	Mezhdurechensk	1	iOS	organic
125	0	39	Ukraine	Slobozhanske	3	Android	ads
126	0	31	Russia	Chelyabinsk	3	Android	organic
127	1	34	Russia	Kommunar	4	iOS	ads
128	0	42	Russia	Sretensk	3	Android	ads
129	0	24	Russia	Prokopyevsk	1	Android	ads
130	1	44	Russia	Tyumen	0	Android	ads
131	1	24	Russia	Paranga	0	Android	organic
132	1	23	Russia	Nizhnevartovsk	3	Android	ads
133	1	20	Russia	Kemerovo	1	Android	ads
134	1	32	Russia	Orenburg	4	Android	ads
135	1	18	Russia	Kirovo-Chepetsk	2	Android	ads
136	1	17	Russia	Kansk	3	Android	ads
137	1	19	Russia	Omsk	2	iOS	organic
138	1	33	Russia	Tambov	2	Android	ads
139	1	21	Russia	Belinskiy	0	Android	ads
140	0	30	Turkey	Diyarbakır	4	iOS	organic
141	0	14	Russia	Mineral’nyye Vody	3	Android	ads
142	0	28	Ukraine	Ternopil	4	iOS	ads
143	0	15	Russia	Usol’ye-Sibirskoye	0	iOS	ads
144	0	31	Russia	Saint Petersburg	0	iOS	ads
145	1	22	Russia	Moscow	4	Android	organic
146	1	34	Russia	Novocherkassk	2	iOS	organic
147	0	25	Russia	Reutov	2	Android	organic
148	1	33	Russia	Mikhaylovka	3	Android	organic
149	0	27	Russia	Vladikavkaz	0	Android	ads
150	0	16	Russia	Novokuznetsk	3	Android	organic
151	1	41	Russia	Perm	1	iOS	ads
152	1	23	Kazakhstan	Aqtaū	3	Android	ads
153	0	22	Russia	Petropavlovsk-Kamchatskiy	4	iOS	ads
154	1	57	Russia	Kudymkar	2	Android	organic
155	1	21	Russia	Kurgan	3	Android	ads
156	0	22	Russia	Kazan	3	iOS	organic
157	0	24	Russia	Tomsk	0	Android	organic
158	1	27	Russia	Ryazan	3	Android	organic
159	1	24	Russia	Lesozavodsk	2	iOS	ads
160	0	24	Russia	Kurchatov	3	Android	ads
161	1	18	Russia	Ivanteyevka	3	Android	organic
162	1	40	Russia	Saint Petersburg	1	Android	ads
163	0	20	Russia	Noginsk	2	iOS	organic
164	1	15	Russia	Ulan-Ude	4	Android	organic
165	1	21	Russia	Saint Petersburg	4	iOS	organic
166	0	38	Russia	Yaroslavl	4	Android	organic
167	1	15	Russia	Moscow	2	Android	organic
168	0	35	Russia	Nizhniy Novgorod	0	Android	ads
169	1	30	Russia	Ulan-Ude	3	iOS	organic
170	0	16	Russia	Naberezhnyye Chelny	1	Android	ads
171	1	20	Russia	Saint Petersburg	1	Android	ads
172	0	23	Russia	Bryansk	3	iOS	ads
173	0	20	Ukraine	Nosivka	0	Android	ads
174	0	26	Russia	Teykovo	3	Android	organic
175	1	30	Russia	Balashikha	3	iOS	ads
176	0	17	Russia	Moscow	2	Android	ads
177	1	45	Russia	Moscow	1	Android	ads
178	0	26	Russia	Kursk	0	Android	ads
179	1	22	Russia	Moscow	3	iOS	organic
180	1	36	Russia	Tambov	4	Android	ads
181	0	22	Russia	Kostroma	0	Android	ads
182	0	20	Russia	Kimry	1	Android	organic
183	1	16	Russia	Tagay	1	iOS	ads
184	1	60	Russia	Kirov	1	iOS	organic
185	0	50	Russia	Kudryashovskiy	2	iOS	organic
186	1	20	Russia	Volgograd	1	Android	ads
187	0	20	Russia	Yoshkar-Ola	2	iOS	organic
188	1	26	Russia	Soldato-Aleksandrovskoye	1	iOS	ads
189	0	52	Russia	Torzhok	2	iOS	ads
190	1	17	Russia	Nartkala	1	Android	organic
191	0	33	Russia	Omsk	2	Android	organic
192	0	24	Belarus	Byarozawka	2	iOS	ads
193	0	58	Ukraine	Zaporizhzhia	1	Android	organic
194	1	48	Russia	Moscow	1	Android	organic
195	1	54	Russia	Cherepovets	3	Android	ads
196	1	23	Russia	Moscow	0	Android	organic
197	0	18	Russia	Moscow	4	iOS	organic
198	1	53	Ukraine	Melitopol	1	Android	ads
199	1	37	Russia	Yakutsk	2	Android	ads
200	0	17	Russia	Neftekumsk	2	iOS	ads
201	1	24	Russia	Aksakovo	2	iOS	organic
202	1	40	Finland	Vantaa	1	iOS	organic
203	1	30	Russia	Omsk	4	Android	ads
204	1	23	Ukraine	Romny	4	Android	ads
205	0	21	Russia	Katyr-Yurt	2	Android	ads
206	0	40	Russia	Agvali	2	Android	organic
207	1	27	Russia	Kurtamysh	3	iOS	organic
208	0	31	Russia	Moscow	3	iOS	ads
209	1	40	Russia	Lesnoy	1	iOS	organic
210	0	21	Russia	Lakhdenpokhya	2	Android	organic
211	1	21	Ukraine	Mariupol	0	Android	organic
212	0	36	Russia	Pugachev	1	Android	organic
213	1	21	Russia	Novokuznetsk	1	Android	ads
214	0	18	Russia	Kyzyl	2	iOS	organic
215	1	27	Russia	Nizhniy Novgorod	1	iOS	ads
216	0	30	Russia	Izhevsk	4	Android	organic
217	1	38	Russia	Khasanya	0	Android	ads
218	0	22	Russia	Dubna	0	iOS	ads
219	0	40	Russia	Krasnoyarsk	3	Android	organic
220	0	29	Russia	Khabarovsk	2	iOS	ads
221	1	22	Russia	Sterlitamak	3	Android	ads
222	1	37	Russia	Voronezh	3	iOS	ads
223	0	22	Russia	Rabotki	4	iOS	organic
224	1	21	Russia	Ulan-Ude	2	Android	ads
225	0	18	Russia	Vladikavkaz	0	iOS	ads
226	0	20	Russia	Sosenskiy	4	Android	ads
227	0	28	Russia	Vologda	3	Android	organic
228	1	20	Russia	Omsk	3	Android	organic
229	0	16	Russia	Ivanovo	4	Android	organic
230	0	27	Russia	Odintsovo	1	Android	ads
231	1	19	Russia	Syktyvkar	2	Android	organic
232	1	30	Russia	Novosibirsk	2	iOS	ads
233	0	20	Russia	Mezhdurechensk	4	iOS	ads
234	0	20	Russia	Nalchik	0	Android	ads
235	1	29	Russia	Vsevolozhsk	1	iOS	ads
236	0	28	Russia	Saint Petersburg	0	iOS	ads
237	0	20	Russia	Kazan	4	Android	ads
238	1	21	Russia	Moscow	3	Android	ads
239	1	19	Russia	Saransk	3	Android	organic
240	0	25	Russia	Nakhodka	3	iOS	ads
241	1	40	Russia	Saransk	0	Android	ads
242	0	27	Russia	Novosibirsk	2	Android	organic
243	1	55	Russia	Saint Petersburg	2	Android	organic
244	1	33	Russia	Argayash	0	Android	organic
245	1	30	Russia	Novomoskovsk	0	iOS	ads
246	1	21	Russia	Novocherkassk	1	Android	organic
247	0	19	Russia	Saint Petersburg	0	iOS	organic
248	1	15	Russia	Chelyabinsk	4	Android	organic
249	0	35	Russia	Moscow	3	Android	ads
250	0	20	Finland	Kuopio	0	iOS	organic
251	1	36	Russia	Moscow	0	iOS	organic
252	0	18	Russia	Novouralsk	4	Android	organic
253	1	27	Ukraine	Lviv	1	iOS	ads
254	0	21	Russia	Magdagachi	0	iOS	ads
255	1	21	Russia	Vladivostok	1	Android	ads
256	1	48	Russia	Sochi	4	Android	ads
257	1	18	Russia	Moscow	4	Android	ads
258	0	19	Russia	Ob	1	Android	organic
259	1	27	Russia	Buinsk	1	Android	ads
260	1	20	Russia	Moscow	0	Android	ads
261	1	21	Russia	Saint Petersburg	1	Android	ads
262	1	20	Russia	Balakovo	3	Android	ads
263	0	43	Russia	Armavir	3	Android	organic
264	1	36	Russia	Revda	1	Android	organic
265	0	46	Russia	Ulan-Ude	1	iOS	ads
266	0	16	Russia	Tyumen	3	iOS	organic
267	0	21	Russia	Kaliningrad	3	Android	organic
268	1	58	Russia	Balakovo	0	iOS	ads
269	1	26	Belarus	Babruysk	2	iOS	ads
270	0	15	Russia	Kaliningrad	1	iOS	organic
271	1	44	Russia	Kashira	1	Android	ads
272	0	16	Russia	Engels	2	Android	ads
273	0	26	Russia	Nalchik	3	Android	ads
274	0	45	Ukraine	Kyiv	3	Android	ads
275	0	18	Russia	Yekaterinburg	3	Android	ads
276	1	21	Turkey	Erzurum	1	Android	organic
277	1	14	Russia	Chelyabinsk	4	iOS	ads
278	1	28	Russia	Samara	0	Android	organic
279	1	19	Belarus	Pinsk	2	Android	organic
280	0	36	Russia	Tosno	3	iOS	ads
281	0	29	Russia	Perm	4	Android	ads
282	0	21	Russia	Uryupinsk	1	Android	organic
283	0	26	Russia	Yelets	0	iOS	organic
284	1	29	Russia	Zlatoust	0	iOS	ads
285	1	21	Russia	Novokuznetsk	4	Android	organic
286	0	37	Russia	Chapayevsk	0	Android	ads
287	0	29	Russia	Novosibirsk	4	Android	ads
288	0	23	Ukraine	Kharkiv	2	iOS	organic
289	1	45	Russia	Moscow	0	Android	ads
290	1	16	Russia	Nevinnomyssk	4	Android	organic
291	1	25	Russia	Reutov	0	Android	organic
292	0	21	Russia	Kuvandyk	2	Android	ads
293	0	15	Russia	Verkhniye Tatyshly	0	iOS	organic
294	0	37	Russia	Krasnoyarsk	4	Android	ads
295	0	22	Russia	Velikiy Novgorod	3	iOS	ads
296	0	62	Russia	Orël	1	Android	ads
297	0	26	Belarus	Asipovichy	0	Android	ads
298	1	38	Russia	Saratov	0	Android	ads
299	1	23	Russia	Yekaterinburg	1	Android	ads
300	0	27	Russia	Moscow	4	Android	organic
301	1	40	Russia	Moscow	4	Android	ads
302	1	29	Ukraine	Sevastopol	3	Android	organic
303	0	22	Russia	Yekaterinburg	3	iOS	ads
304	0	49	Ukraine	Horodyshche	0	iOS	ads
305	1	19	Russia	Moscow	4	Android	organic
306	1	31	Russia	Ufa	4	iOS	ads
307	0	42	Russia	Krasnoyarsk	3	iOS	ads
308	0	39	Russia	Moscow	2	iOS	ads
309	0	24	Russia	Astrakhan	1	iOS	ads
310	1	23	Russia	Arkhangelsk	3	iOS	ads
311	0	37	Russia	Artëmovskiy	2	Android	ads
312	1	35	Ukraine	Kharkiv	0	Android	organic
313	0	29	Russia	Lysva	1	Android	ads
314	0	37	Russia	Kirov	2	Android	ads
315	1	22	Russia	Balakovo	3	Android	organic
316	1	72	Ukraine	Tomakivka	0	iOS	organic
317	1	14	Russia	Glazov	0	iOS	ads
318	0	19	Russia	Moscow	1	iOS	organic
319	0	21	Russia	Voronezh	3	iOS	ads
320	0	19	Russia	Perm	1	iOS	organic
321	0	37	Russia	Petrozavodsk	4	Android	ads
322	1	26	Russia	Odintsovo	3	iOS	ads
323	0	24	Russia	Moscow	0	Android	organic
324	1	41	Russia	Cherepovets	3	Android	ads
325	0	30	Russia	Oy	0	Android	ads
326	0	17	Russia	Moscow	0	Android	ads
327	1	18	Russia	Rostov	3	Android	ads
328	0	23	Russia	Mendeleyevsk	4	iOS	ads
329	1	21	Russia	Yakutsk	1	Android	ads
330	0	22	Russia	Ulyanovsk	0	Android	organic
331	1	23	Russia	Nizhniy Novgorod	0	iOS	ads
332	0	22	Russia	Partizansk	3	Android	organic
333	1	19	Russia	Noyabrsk	1	Android	organic
334	0	14	Russia	Moscow	4	Android	organic
335	1	19	Russia	Troitsk	1	Android	organic
336	1	25	Russia	Yasnyy	2	Android	ads
337	1	18	Turkey	Çorum	2	Android	ads
338	1	38	Russia	Vologda	1	iOS	ads
339	0	27	Russia	Moscow	0	iOS	organic
340	1	41	Russia	Kemerovo	2	Android	ads
341	1	20	Russia	Kirov	4	iOS	organic
342	1	24	Russia	Novorossiysk	4	Android	ads
343	0	18	Russia	Kemerovo	0	Android	organic
344	1	20	Russia	Sterlitamak	0	Android	ads
345	0	18	Russia	Khanty-Mansiysk	4	Android	ads
346	0	19	Russia	Moscow	3	Android	ads
347	1	20	Azerbaijan	Baku	4	Android	organic
348	0	21	Russia	Usol’ye-Sibirskoye	1	Android	ads
349	0	18	Russia	Roslavl	4	iOS	ads
350	1	38	Russia	Kolpino	1	Android	ads
351	0	28	Russia	Zhukovskiy	2	Android	ads
352	0	21	Russia	Moscow	2	Android	ads
353	1	17	Russia	Iskitim	3	Android	organic
354	1	40	Russia	Barnaul	3	iOS	ads
355	1	46	Russia	Vorkuta	3	Android	ads
356	0	38	Russia	Shakhty	4	Android	ads
357	1	33	Russia	Gay	2	Android	ads
358	1	40	Russia	Chaa-Khol’	4	Android	ads
359	1	29	Russia	Karabulak	1	Android	ads
360	0	16	Russia	Moscow	3	Android	ads
361	0	52	Russia	Stavropol	0	iOS	organic
362	0	40	Russia	Prokopyevsk	3	Android	ads
363	0	19	Russia	Samara	0	iOS	organic
364	1	24	Russia	Engels	3	Android	ads
365	0	21	Kazakhstan	Oral	3	Android	ads
366	1	33	Russia	Naro-Fominsk	4	iOS	ads
367	1	20	Russia	Yessentuki	3	Android	organic
368	0	19	Russia	Moscow	3	Android	ads
369	1	18	Russia	Serov	0	iOS	organic
370	1	31	Russia	Kurchaloy	3	iOS	ads
371	1	33	Russia	Yekaterinburg	3	Android	ads
372	0	32	Russia	Moscow	1	Android	ads
373	1	24	Russia	Bronnitsy	3	Android	ads
374	1	47	Russia	Balashikha	3	Android	organic
375	0	31	Russia	Oktyabrskiy	4	Android	ads
376	1	22	Russia	Tolyatti	2	Android	organic
377	0	57	Russia	Iglino	3	Android	organic
378	1	39	Russia	Tambov	3	Android	ads
379	0	35	Russia	Novosibirsk	0	Android	organic
380	0	24	Russia	Saint Petersburg	4	Android	organic
381	0	31	Russia	Saratov	2	Android	organic
382	0	26	Russia	Tyumen	3	Android	ads
383	1	18	Russia	Polovodovo	1	Android	organic
384	0	28	Russia	Nizhniy Tagil	1	Android	ads
385	0	21	Russia	Omsk	0	Android	organic
386	1	29	Russia	Severnoye	2	Android	ads
387	0	20	Russia	Balashov	3	Android	organic
388	1	31	Russia	Nevinnomyssk	1	iOS	ads
389	1	19	Russia	Novosibirsk	1	Android	ads
390	1	19	Russia	Ryazan	2	iOS	organic
391	0	28	Russia	Novokuznetsk	1	Android	ads
392	1	20	Belarus	Brest	2	iOS	organic
393	1	25	Russia	Nizhniy Novgorod	4	Android	ads
394	1	49	Russia	Moscow	1	Android	ads
395	1	21	Russia	Tsotsin-Yurt	2	iOS	ads
396	1	18	Russia	Bryansk	3	iOS	organic
397	1	43	Russia	Saint Petersburg	0	Android	ads
398	0	24	Russia	Gatchina	1	Android	organic
399	0	21	Russia	Belebey	4	Android	organic
400	1	29	Russia	Kiselëvsk	0	iOS	ads
401	1	22	Russia	Orsk	4	iOS	ads
402	0	22	Russia	Polevskoy	0	Android	organic
403	0	44	Russia	Khabarovsk	2	Android	organic
404	0	20	Russia	Yaroslavl	2	Android	ads
405	0	26	Russia	Nizhniy Novgorod	3	Android	ads
406	1	22	Kazakhstan	Öskemen	2	Android	ads
407	1	22	Ukraine	Kharkiv	1	Android	ads
408	1	29	Russia	Dzerzhinskiy	4	iOS	ads
409	1	28	Ukraine	Chernihivka	2	iOS	organic
410	0	26	Russia	Moscow	0	Android	ads
411	1	37	Ukraine	Kremenchuk	2	iOS	ads
412	0	23	Russia	Kurgan	2	iOS	ads
413	1	30	Russia	Gatchina	0	Android	ads
414	1	31	Turkey	Çanakkale	2	iOS	ads
415	1	17	Azerbaijan	Baku	4	iOS	ads
416	1	21	Russia	Chelyabinsk	3	Android	ads
417	0	52	Russia	Seversk	1	Android	ads
418	1	40	Russia	Penza	1	Android	organic
419	1	18	Russia	Moscow	0	Android	organic
420	0	42	Russia	Yekaterinburg	2	Android	ads
421	1	24	Russia	Moscow	0	Android	organic
422	1	24	Belarus	Hrodna	4	Android	organic
423	0	31	Russia	Krasnoyarsk	0	Android	ads
424	1	35	Russia	Saint Petersburg	0	iOS	ads
425	1	27	Russia	Kostroma	1	iOS	ads
426	0	23	Turkey	Istanbul	0	Android	organic
427	1	31	Russia	Khanty-Mansiysk	2	iOS	organic
428	1	42	Russia	Rubtsovsk	3	Android	organic
429	0	46	Russia	Abakan	1	iOS	organic
430	1	26	Russia	Saint Petersburg	2	iOS	ads
431	0	44	Russia	Sovetskaya Gavan’	0	Android	ads
432	1	23	Russia	Saint Petersburg	1	Android	ads
433	1	29	Ukraine	Pervomaiskyi	3	iOS	ads
434	1	25	Russia	Azov	4	Android	organic
435	1	19	Russia	Moscow	2	iOS	ads
436	0	17	Russia	Moscow	0	Android	ads
437	0	18	Russia	Novosibirsk	0	Android	ads
438	0	41	Russia	Saint Petersburg	0	Android	ads
439	1	26	Russia	Chita	3	Android	organic
440	1	30	Russia	Nizhniy Novgorod	3	Android	organic
441	0	17	Russia	Moscow	3	Android	organic
442	0	15	Russia	Orenburg	0	Android	ads
443	1	46	Ukraine	Dnipro	3	Android	organic
444	1	19	Russia	Omsk	2	Android	organic
445	1	17	Belarus	Minsk	3	Android	ads
446	0	32	Russia	Lyubertsy	4	Android	ads
447	1	22	Russia	Saint Petersburg	4	Android	ads
448	1	38	Kazakhstan	Mangghystaū	0	Android	ads
449	0	44	Russia	Moscow	0	iOS	ads
450	0	23	Russia	Nizhnekamsk	4	Android	ads
451	0	37	Finland	Helsinki	1	Android	ads
452	0	25	Russia	Tomsk	4	iOS	organic
453	1	16	Ukraine	Lutsk	3	Android	ads
454	0	24	Russia	Kolpino	2	Android	ads
455	1	38	Russia	Lipetsk	0	Android	ads
456	1	29	Russia	Nevel	0	Android	ads
457	0	19	Russia	Rostov	3	Android	organic
458	1	37	Russia	Moscow	1	iOS	ads
459	1	21	Russia	Nazran	3	Android	organic
460	0	49	Russia	Sultan-Yangiyurt	3	iOS	organic
461	0	27	Ukraine	Kherson	1	Android	organic
462	1	24	Russia	Zeyuko	1	Android	organic
463	0	23	Ukraine	Sevastopol	2	iOS	ads
464	1	21	Russia	Buinsk	4	Android	ads
465	0	37	Russia	Tsotsin-Yurt	3	Android	organic
466	0	42	Russia	Troitsk	1	Android	ads
467	0	16	Russia	Nakhodka	2	Android	ads
468	1	21	Russia	Abakan	2	Android	organic
469	0	21	Russia	Naberezhnyye Chelny	2	Android	organic
470	1	34	Russia	Moscow	4	Android	ads
471	0	36	Russia	Volgograd	2	Android	organic
472	0	61	Russia	Klyuchi	4	iOS	organic
473	0	23	Russia	Klin	0	Android	ads
474	1	34	Russia	Yekaterinburg	1	Android	ads
475	1	28	Russia	Novosibirsk	0	Android	ads
476	0	23	Russia	Ufa	2	iOS	organic
477	0	39	Russia	Orenburg	1	Android	organic
478	0	26	Russia	Izhevsk	1	Android	organic
479	1	24	Russia	Taganrog	1	Android	organic
480	1	20	Russia	Novosibirsk	0	iOS	ads
481	0	31	Russia	Smolensk	0	Android	ads
482	1	23	Russia	Lyubertsy	0	iOS	organic
483	1	35	Russia	Staryy Oskol	4	iOS	ads
484	1	15	Russia	Saint Petersburg	2	Android	ads
485	0	26	Russia	Zakamensk	2	Android	organic
486	1	51	Russia	Vladimir	1	Android	ads
487	0	33	Ukraine	Zaporizhzhia	3	Android	ads
488	1	41	Ukraine	Zaporizhzhia	4	Android	organic
489	1	17	Russia	Omsk	2	Android	ads
490	1	18	Russia	Volgodonsk	4	iOS	ads
491	1	22	Russia	Vereshchagino	2	iOS	ads
492	0	17	Russia	Novorossiysk	3	iOS	organic
493	1	37	Russia	Uchaly	2	iOS	organic
494	1	22	Russia	Moscow	4	iOS	ads
495	1	17	Russia	Moscow	4	iOS	ads
496	0	32	Russia	Novocheboksarsk	3	Android	organic
497	1	19	Russia	Kirov	3	iOS	ads
498	1	23	Russia	Penza	2	iOS	ads
499	1	34	Russia	Saint Petersburg	3	iOS	organic
500	1	18	Russia	Valday	4	Android	ads
501	1	19	Russia	Yekaterinburg	4	iOS	ads
502	1	21	Ukraine	Znamianka	4	Android	ads
503	1	27	Russia	Kamensk-Ural’skiy	3	iOS	ads
504	0	22	Russia	Uglich	0	Android	ads
505	1	40	Russia	Moscow	4	Android	ads
506	0	20	Russia	Dolgoprudnyy	2	Android	ads
507	1	38	Russia	Saint Petersburg	4	Android	organic
508	1	35	Russia	Kenzhe	3	Android	ads
509	0	24	Russia	Zadonsk	1	Android	ads
510	1	51	Ukraine	Boryspil	0	Android	organic
511	0	17	Russia	Kazan	1	Android	organic
512	0	36	Russia	Novokuznetsk	3	Android	ads
513	1	33	Russia	Nalchik	2	Android	organic
514	1	46	Russia	Stupino	0	iOS	ads
515	1	32	Russia	Klyuchi	2	iOS	organic
516	1	34	Russia	Krasnoyarsk	2	Android	ads
517	0	22	Russia	Yaroslavl	2	iOS	organic
518	0	26	Russia	Arzamas	2	iOS	organic
519	0	18	Russia	Barnaul	3	Android	ads
520	0	17	Russia	Elista	2	Android	ads
521	1	23	Russia	Sergiyev Posad	4	Android	organic
522	1	40	Russia	Vladivostok	4	Android	organic
523	0	22	Russia	Vladivostok	1	Android	ads
524	1	18	Russia	Kazan	0	Android	organic
525	0	21	Russia	Saint Petersburg	3	iOS	ads
526	0	26	Russia	Astrakhan	4	iOS	organic
527	0	18	Russia	Moscow	4	Android	organic
528	1	29	Russia	Moscow	1	iOS	organic
529	1	23	Russia	Sol’-Iletsk	3	Android	ads
530	1	23	Belarus	Mazyr	4	Android	ads
531	0	21	Russia	Bogorodsk	2	Android	ads
532	0	24	Turkey	Adana	3	Android	ads
533	1	22	Russia	Perm	4	Android	organic
534	0	37	Russia	Kyzyl	0	iOS	organic
535	1	18	Russia	Moscow	4	Android	ads
536	0	15	Russia	Dubna	2	Android	organic
537	1	63	Ukraine	Poltava	4	Android	ads
538	0	32	Russia	Davlekanovo	4	iOS	ads
539	0	14	Ukraine	Skadovsk	1	iOS	organic
540	1	19	Ukraine	Alchevsk	3	iOS	ads
541	0	19	Russia	Novorossiysk	1	Android	ads
542	1	23	Ukraine	Druzhkivka	3	Android	organic
543	1	47	Azerbaijan	Sumqayıt	4	iOS	ads
544	0	24	Russia	Nizhniy Novgorod	1	Android	ads
545	1	45	Russia	Voronezh	2	Android	organic
546	0	20	Russia	Moscow	4	iOS	organic
547	0	17	Russia	Moscow	4	iOS	ads
548	1	25	Russia	Serdobsk	3	Android	ads
549	1	17	Ukraine	Horlivka	0	Android	organic
550	1	38	Russia	Vyazniki	1	iOS	ads
551	0	46	Russia	Saransk	0	Android	organic
552	0	44	Russia	Yuzhno-Sakhalinsk	3	iOS	organic
553	1	56	Russia	Dobryanka	0	Android	ads
554	0	54	Russia	Samara	1	iOS	ads
555	0	15	Latvia	Daugavpils	3	Android	organic
556	0	19	Russia	Sochi	4	iOS	ads
557	0	23	Russia	Mytishchi	3	iOS	ads
558	1	20	Russia	Yuzhno-Sakhalinsk	0	Android	ads
559	0	21	Turkey	Istanbul	2	iOS	organic
560	0	42	Russia	Barnaul	0	Android	ads
561	1	28	Russia	Asbest	1	Android	organic
562	1	16	Ukraine	Fastiv	3	Android	organic
563	1	23	Russia	Kemerovo	0	Android	ads
564	1	16	Russia	Morozovsk	1	Android	ads
565	0	19	Russia	Kamen’-Rybolov	0	Android	ads
566	1	20	Russia	Megion	3	iOS	organic
567	1	43	Russia	Novokuznetsk	4	Android	ads
568	0	46	Russia	Novouralsk	1	iOS	organic
569	0	29	Russia	Dagestanskiye Ogni	3	iOS	organic
570	1	31	Russia	Samara	0	Android	ads
571	1	21	Russia	Moscow	2	Android	ads
572	1	24	Russia	Ufa	1	Android	organic
573	1	37	Kazakhstan	Talghar	1	Android	organic
574	0	15	Russia	Kuznetsk	0	Android	ads
575	1	24	Russia	Fatezh	1	Android	organic
576	1	18	Russia	Verkhniy Ufaley	2	iOS	ads
577	1	17	Russia	Kazan	4	Android	ads
578	0	57	Russia	Tyumen	2	Android	ads
579	1	21	Russia	Vologda	0	iOS	ads
580	0	45	Russia	Nikolsk	0	Android	organic
581	1	22	Russia	Alapayevsk	1	Android	ads
582	1	26	Ukraine	Khrustalnyi	2	iOS	ads
583	1	33	Russia	Odintsovo	4	iOS	ads
584	1	29	Azerbaijan	İmişli	2	Android	ads
585	0	18	Russia	Yekaterinburg	3	Android	organic
586	0	19	Russia	Moscow	3	Android	ads
587	1	46	Russia	Novokuznetsk	4	Android	organic
588	1	27	Russia	Pskov	1	Android	ads
589	1	15	Russia	Okhotsk	1	Android	organic
590	0	45	Russia	Ulan-Ude	4	iOS	organic
591	1	19	Russia	Rostov	2	iOS	ads
592	0	30	Turkey	Istanbul	4	Android	organic
593	0	20	Russia	Omsk	1	iOS	ads
594	1	19	Russia	Moscow	0	Android	organic
595	0	18	Russia	Ufa	4	iOS	ads
596	0	48	Russia	Saint Petersburg	4	Android	organic
597	0	18	Russia	Kamyshin	3	iOS	organic
598	1	21	Russia	Saint Petersburg	3	Android	ads
599	0	25	Russia	Saratov	2	Android	organic
600	1	27	Russia	Zavitinsk	3	iOS	ads
601	0	31	Russia	Kursk	4	iOS	ads
602	1	37	Russia	Rugudzha	3	Android	organic
603	1	16	Russia	Stavropol	1	Android	organic
604	1	29	Russia	Irkutsk	4	iOS	ads
605	1	40	Russia	Nizhniy Novgorod	0	iOS	organic
606	1	33	Russia	Solikamsk	1	iOS	ads
607	0	22	Russia	Naberezhnyye Chelny	3	iOS	ads
608	1	23	Ukraine	Pavlohrad	3	Android	ads
609	1	19	Russia	Vladivostok	0	Android	organic
610	0	15	Russia	Kirov	0	iOS	ads
611	1	20	Russia	Zavolzhsk	2	Android	ads
612	1	21	Russia	Kachkanar	2	iOS	organic
613	1	18	Russia	Tuymazy	1	iOS	organic
614	0	25	Russia	Orenburg	3	Android	organic
615	0	21	Russia	Tarko-Sale	3	Android	organic
616	1	36	Russia	Gelendzhik	4	iOS	ads
617	0	16	Russia	Novorossiysk	4	Android	ads
618	0	20	Belarus	Minsk	2	Android	ads
619	1	28	Russia	Nizhniy Novgorod	1	iOS	organic
620	1	27	Russia	Tomsk	0	iOS	ads
621	0	17	Russia	Balakovo	0	Android	ads
622	1	19	Russia	Umba	4	iOS	ads
623	1	19	Russia	Novosibirsk	2	Android	ads
624	0	24	Russia	Maykop	4	iOS	ads
625	0	21	Russia	Saint Petersburg	0	Android	ads
626	0	22	Russia	Uzlovaya	3	Android	ads
627	1	41	Russia	Magnitogorsk	0	Android	ads
628	0	24	Russia	Meleuz	2	Android	ads
629	1	36	Russia	Vladimir	3	iOS	ads
630	1	46	Russia	Komsomol’sk-na-Amure	3	Android	ads
631	0	43	Russia	Ust’-Katav	2	Android	ads
632	0	18	Russia	Moscow	4	iOS	organic
633	1	17	Russia	Yemva	2	iOS	ads
634	1	19	Russia	Moscow	0	Android	ads
635	0	29	Russia	Moscow	3	iOS	ads
636	0	18	Russia	Orenburg	4	Android	ads
637	1	21	Russia	Moscow	2	Android	ads
638	0	19	Russia	Logovskoye	2	Android	ads
639	0	30	Finland	Keuruu	2	iOS	organic
640	1	17	Russia	Kurgan	4	Android	ads
641	0	39	Russia	Krasnousol’skiy	0	iOS	ads
642	1	15	Ukraine	Bashmachka	0	Android	ads
643	0	22	Russia	Ulan-Ude	4	Android	ads
644	0	17	Russia	Samara	1	Android	organic
645	0	18	Russia	Saint Petersburg	2	iOS	ads
646	0	33	Russia	Krasnokamsk	1	iOS	organic
647	0	17	Russia	Saratov	2	Android	ads
648	0	39	Russia	Chelyabinsk	0	Android	ads
649	0	38	Russia	Kazan	0	Android	organic
650	0	36	Russia	Sosnovyy Bor	0	Android	ads
651	0	21	Russia	Kursk	2	Android	ads
652	1	64	Russia	Aksay	0	Android	organic
653	0	29	Russia	Chapayevsk	0	Android	ads
654	1	21	Russia	Sangar	4	Android	ads
655	1	34	Russia	Omsk	1	iOS	organic
656	0	21	Russia	Dzerzhinskiy	1	Android	ads
657	0	21	Russia	Magnitogorsk	1	iOS	organic
658	1	18	Russia	Moscow	2	Android	ads
659	0	17	Russia	Saint Petersburg	0	Android	organic
660	0	21	Russia	Orekhovo-Zuyevo	0	iOS	ads
661	1	24	Russia	Perm	3	iOS	ads
662	0	23	Russia	Yuzhno-Sakhalinsk	2	Android	ads
663	0	33	Russia	Moscow	2	iOS	organic
664	1	57	Russia	Volzhskiy	1	Android	organic
665	1	20	Russia	Parma	3	iOS	ads
666	0	20	Russia	Vidnoye	4	Android	organic
667	1	26	Russia	Dimitrovgrad	0	Android	ads
668	1	20	Russia	Surgut	0	Android	organic
669	0	24	Russia	Vsevolozhsk	4	Android	organic
670	0	23	Russia	Moscow	1	Android	ads
671	1	38	Russia	Petrozavodsk	0	iOS	ads
672	1	45	Russia	Leninsk-Kuznetskiy	2	Android	ads
673	0	26	Russia	Moscow	2	Android	organic
674	0	50	Russia	Tyumen	2	iOS	ads
675	1	15	Belarus	Minsk	3	Android	organic
676	1	36	Russia	Orël	0	iOS	ads
677	0	25	Russia	Zelënodol’sk	1	Android	ads
678	0	17	Russia	Kyzyl	1	Android	ads
679	1	30	Russia	Kazan	1	Android	ads
680	1	19	Russia	Lipetsk	1	iOS	organic
681	0	17	Russia	Belgorod	0	Android	ads
682	1	42	Russia	Samara	0	Android	ads
683	0	35	Russia	Tyumen	3	Android	ads
684	1	37	Russia	Moscow	1	Android	ads
685	1	22	Russia	Moscow	4	Android	organic
686	1	24	Russia	Saint Petersburg	0	iOS	ads
687	0	14	Russia	Kotelniki	0	iOS	ads
688	0	27	Russia	Stavropol	4	Android	ads
689	0	21	Russia	Kaspiysk	0	iOS	ads
690	0	23	Russia	Moscow	0	Android	ads
691	1	28	Russia	Moscow	1	iOS	organic
692	1	14	Russia	Moscow	3	Android	ads
693	0	32	Russia	Solnechnogorsk	1	iOS	ads
694	1	18	Russia	Tyumen	1	iOS	organic
695	1	15	Russia	Omsk	1	Android	organic
696	1	36	Russia	Novoaleksandrovsk	0	Android	organic
697	0	28	Russia	Novaya Balakhna	1	Android	ads
698	1	25	Russia	Moscow	4	iOS	organic
699	1	56	Russia	Nizhnekamsk	0	iOS	organic
700	1	46	Russia	Moscow	4	iOS	organic
701	0	15	Ukraine	Pokrovsk	0	Android	ads
702	0	32	Russia	Dimitrovgrad	2	Android	organic
703	0	26	Russia	Moscow	3	Android	ads
704	1	31	Russia	Moscow	3	Android	organic
705	0	44	Russia	Nazran	3	Android	ads
706	1	31	Kazakhstan	Shymkent	1	Android	ads
707	1	42	Russia	Moscow	3	iOS	ads
708	0	44	Russia	Ryazan	4	iOS	organic
709	1	22	Kazakhstan	Qaraghandy	0	Android	ads
710	0	29	Russia	Krasnoyarsk	1	Android	ads
711	1	44	Russia	Pestovo	1	Android	organic
712	1	16	Russia	Odintsovo	1	Android	ads
713	1	18	Russia	Babayurt	4	Android	ads
714	1	39	Russia	Artëm	3	Android	ads
715	1	40	Russia	Ust’-Katav	3	Android	ads
716	1	26	Russia	Staryy Oskol	2	Android	ads
717	0	35	Russia	Mineral’nyye Vody	0	iOS	ads
718	0	21	Kazakhstan	Pavlodar	0	iOS	ads
719	1	25	Russia	Astrakhan	1	iOS	organic
720	0	20	Russia	Moscow	0	iOS	organic
721	1	21	Russia	Krasnoyarsk	4	Android	ads
722	0	20	Russia	Krasnodar	0	iOS	organic
723	1	24	Russia	Lipetsk	0	iOS	organic
724	0	39	Russia	Novosibirsk	4	iOS	organic
725	1	30	Russia	Dzerzhinskiy	0	Android	ads
726	1	42	Russia	Kyzyl	3	Android	organic
727	0	33	Russia	Kaluga	3	Android	ads
728	0	22	Russia	Lyubertsy	1	iOS	organic
729	0	15	Russia	Moscow	4	Android	ads
730	1	15	Russia	Ryazan	1	iOS	organic
731	1	18	Russia	Moscow	0	iOS	ads
732	1	22	Russia	Novovoronezh	0	Android	ads
733	1	18	Russia	Svobodnyy	0	iOS	organic
734	0	31	Russia	Moscow	1	Android	ads
735	1	17	Russia	Moscow	4	Android	ads
736	1	30	Russia	Shakhunya	2	Android	organic
737	1	38	Russia	Pervouralsk	1	Android	ads
738	1	37	Russia	Kamensk-Ural’skiy	2	Android	ads
739	1	29	Russia	Vorkuta	4	iOS	organic
740	1	31	Finland	Vantaa	4	Android	organic
741	1	19	Russia	Moscow	2	Android	ads
742	0	19	Russia	Novosibirsk	0	Android	ads
743	0	23	Russia	Kimry	4	Android	organic
744	0	29	Russia	Moscow	2	Android	ads
745	1	17	Russia	Smolensk	4	Android	organic
746	1	21	Russia	Moscow	1	Android	organic
747	0	20	Russia	Nevyansk	2	Android	ads
748	1	25	Russia	Verkhnyaya Pyshma	4	Android	ads
749	1	21	Russia	Zavolzhye	3	iOS	ads
750	0	46	Russia	Saint Petersburg	4	Android	ads
751	0	20	Russia	Moscow	0	Android	organic
752	0	30	Russia	Rostov	1	Android	ads
753	0	28	Russia	Leninsk-Kuznetskiy	2	iOS	organic
754	0	22	Russia	Kurchaloy	2	iOS	ads
755	0	19	Azerbaijan	Baku	2	Android	organic
756	1	24	Ukraine	Ivano-Frankivsk	1	Android	ads
757	0	19	Russia	Kursk	1	Android	ads
758	1	21	Russia	Moscow	0	iOS	ads
759	1	47	Russia	Achinsk	0	Android	organic
760	0	35	Russia	Novokuznetsk	1	Android	ads
761	1	50	Russia	Dzerzhinsk	1	iOS	ads
762	1	38	Russia	Krymsk	0	iOS	ads
763	0	24	Russia	Moscow	0	Android	organic
764	1	17	Russia	Prokopyevsk	0	Android	ads
765	0	24	Russia	Krasnotur’insk	3	Android	ads
766	1	22	Russia	Kazan	4	Android	organic
767	1	26	Russia	Ryazan	2	iOS	ads
768	1	19	Russia	Moscow	2	Android	organic
769	0	14	Russia	Medvezhyegorsk	0	iOS	ads
770	1	15	Russia	Aleksandrovka	3	iOS	ads
771	1	31	Russia	Saratov	4	iOS	ads
772	1	24	Russia	Mezhdurechensk	2	iOS	organic
773	0	46	Russia	Izhevsk	4	Android	ads
774	0	34	Russia	Balakovo	0	Android	ads
775	0	28	Kazakhstan	Nur-Sultan	4	Android	organic
776	0	25	Russia	Ulan-Ude	1	Android	ads
777	0	15	Russia	Korolëv	3	Android	ads
778	1	32	Russia	Arkhangelsk	4	Android	ads
779	0	36	Russia	Saint Petersburg	1	Android	ads
780	0	18	Russia	Maginsk	3	iOS	organic
781	1	21	Russia	Novosibirsk	2	iOS	organic
782	1	21	Russia	Stupino	4	Android	ads
783	0	14	Russia	Moscow	0	Android	ads
784	1	23	Russia	Barnaul	4	iOS	organic
785	0	21	Russia	Ufa	4	Android	ads
786	0	40	Russia	Chelyabinsk	4	Android	organic
787	0	15	Russia	Izhevsk	2	iOS	ads
788	1	38	Russia	Chelyabinsk	0	Android	ads
789	1	52	Ukraine	Mukacheve	0	iOS	ads
790	1	35	Russia	Moscow	3	Android	organic
791	0	34	Russia	Moscow	2	Android	ads
792	1	30	Russia	Nizhniy Novgorod	2	iOS	ads
793	0	34	Russia	Balakovo	4	Android	organic
794	1	40	Russia	Vladikavkaz	4	iOS	organic
795	1	33	Russia	Slavyansk-na-Kubani	3	Android	organic
796	0	19	Russia	Kostroma	3	Android	ads
797	0	48	Russia	Samara	4	Android	ads
798	0	19	Russia	Moscow	1	iOS	ads
799	0	20	Russia	Bugulma	1	Android	ads
800	0	44	Russia	Omsk	3	Android	ads
801	1	28	Russia	Norilsk	3	Android	ads
802	0	15	Russia	Saint Petersburg	3	Android	ads
803	1	24	Belarus	Minsk	2	Android	organic
804	1	32	Russia	Tikhoretsk	1	iOS	ads
805	0	24	Russia	Meleuz	2	iOS	ads
806	0	21	Russia	Khotkovo	4	Android	organic
807	1	34	Russia	Omsk	0	Android	organic
808	1	43	Russia	Vyborg	2	iOS	organic
809	0	23	Russia	Yaroslavl	0	Android	organic
810	0	20	Russia	Kondopoga	1	iOS	ads
811	1	21	Russia	Karachayevsk	1	Android	ads
812	1	38	Russia	Groznyy	3	Android	ads
813	0	35	Russia	Mytishchi	4	Android	organic
814	0	20	Russia	Ramenskoye	3	iOS	organic
815	0	47	Russia	Tobolsk	0	Android	ads
816	1	33	Russia	Yekaterinburg	2	iOS	organic
817	1	35	Belarus	Pinsk	2	Android	ads
818	0	24	Russia	Moscow	1	Android	ads
819	0	24	Russia	Pytalovo	4	iOS	ads
820	1	17	Russia	Novosibirsk	3	Android	ads
821	0	19	Russia	Moscow	1	Android	ads
822	1	20	Russia	Yekaterinburg	2	Android	ads
823	1	19	Russia	Astrakhan	0	Android	ads
824	0	24	Russia	Moscow	2	iOS	ads
825	0	36	Russia	Volgograd	3	Android	organic
826	1	20	Russia	Saratov	3	Android	ads
827	1	21	Russia	Akhtubinsk	4	Android	organic
828	1	22	Russia	Ufa	1	Android	organic
829	0	24	Ukraine	Kharkiv	2	Android	ads
830	1	19	Belarus	Minsk	0	Android	ads
831	1	16	Russia	Moscow	2	Android	organic
832	0	29	Russia	Vyartsilya	3	Android	ads
833	1	35	Russia	Yekaterinburg	0	iOS	ads
834	0	14	Russia	Gubakha	4	Android	ads
835	0	20	Russia	Yurga	2	iOS	ads
836	0	31	Russia	Tolyatti	0	Android	ads
837	0	37	Ukraine	Korostyshiv	1	Android	ads
838	1	19	Russia	Syktyvkar	0	Android	ads
839	0	15	Russia	Orël	4	iOS	ads
840	0	30	Russia	Odintsovo	0	Android	ads
841	0	18	Russia	Stavropol	3	Android	ads
842	0	14	Russia	Obninsk	3	iOS	ads
843	1	21	Russia	Ufa	4	iOS	ads
844	1	28	Russia	Moscow	4	Android	organic
845	0	34	Russia	Novosibirsk	3	Android	organic
846	1	28	Russia	Tula	0	iOS	organic
847	1	22	Finland	Tampere	1	iOS	ads
848	1	15	Russia	Kaliningrad	0	iOS	ads
849	0	22	Russia	Samara	2	iOS	organic
850	0	14	Russia	Ulan-Ude	2	Android	ads
851	1	21	Russia	Volgograd	1	Android	ads
852	1	25	Russia	Torzhok	4	Android	ads
853	0	17	Russia	Gubkinskiy	0	iOS	ads
854	0	21	Russia	Ust’-Dzheguta	1	Android	ads
855	0	15	Russia	Moscow	2	iOS	ads
856	0	24	Russia	Kalach	1	Android	ads
857	1	49	Russia	Moscow	0	Android	organic
858	0	48	Russia	Moscow	3	iOS	ads
859	0	43	Russia	Krasnokamensk	0	Android	ads
860	0	42	Russia	Malaya Vishera	1	Android	organic
861	1	17	Russia	Kopeysk	3	Android	ads
862	0	16	Russia	Georgiyevsk	1	Android	organic
863	1	52	Russia	Chelyabinsk	2	Android	ads
864	0	21	Belarus	Maladzyechna	0	iOS	ads
865	0	44	Azerbaijan	Gəncə	3	Android	organic
866	1	28	Russia	Kasimov	2	Android	ads
867	0	32	Russia	Nizhniy Tagil	1	Android	ads
868	1	25	Russia	Taganrog	0	iOS	ads
869	1	22	Russia	Dubna	2	iOS	ads
870	1	19	Russia	Moscow	4	Android	ads
871	1	19	Russia	Perm	2	Android	ads
872	1	29	Russia	Noginsk	4	Android	ads
873	1	31	Russia	Moscow	4	iOS	ads
874	1	21	Russia	Penza	3	Android	organic
875	1	32	Russia	Shelekhov	4	Android	ads
876	1	29	Russia	Saint Petersburg	4	iOS	organic
877	1	35	Azerbaijan	Baku	2	Android	ads
878	1	14	Russia	Chaykovskiy	4	Android	organic
879	0	22	Russia	Moscow	0	Android	ads
880	1	33	Russia	Krasnoyarsk	2	iOS	ads
881	1	15	Russia	Korkino	1	Android	ads
882	0	32	Russia	Moscow	2	iOS	ads
883	0	14	Russia	Arkhangelsk	0	iOS	ads
884	0	23	Russia	Khabarovsk	0	Android	organic
885	1	21	Russia	Kemerovo	0	Android	ads
886	1	27	Russia	Ivanovo	1	iOS	organic
887	0	39	Russia	Stavropol	4	Android	organic
888	0	41	Russia	Krasnodar	2	Android	ads
889	1	22	Russia	Vladivostok	4	Android	ads
890	0	21	Russia	Beslan	1	Android	ads
891	1	26	Russia	Irkutsk	3	iOS	ads
892	1	25	Russia	Tomsk	4	iOS	organic
893	0	34	Turkey	Niğde	0	iOS	organic
894	0	27	Russia	Moscow	1	Android	ads
895	0	44	Russia	Omsk	1	Android	organic
896	0	47	Ukraine	Mykolaiv	2	iOS	organic
897	0	18	Russia	Sterlitamak	4	Android	ads
898	1	31	Russia	Zelënodol’sk	3	Android	ads
899	0	16	Russia	Moscow	0	Android	organic
900	1	37	Russia	Polevskoy	0	iOS	ads
901	0	49	Russia	Fatezh	1	Android	organic
902	0	23	Russia	Solnechnogorsk	1	iOS	organic
903	0	15	Russia	Chelyabinsk	4	Android	ads
904	0	15	Russia	Mozhga	2	iOS	ads
905	1	36	Russia	Novosibirsk	2	Android	organic
906	1	23	Kazakhstan	Aqtöbe	1	iOS	organic
907	1	23	Russia	Angarsk	3	Android	organic
908	0	42	Russia	Slantsy	3	Android	organic
909	1	20	Russia	Saint Petersburg	2	iOS	ads
910	1	40	Russia	Lyubertsy	0	iOS	organic
911	0	30	Russia	Lytkarino	4	Android	ads
912	0	26	Russia	Chelyabinsk	0	iOS	ads
913	1	30	Russia	Saint Petersburg	1	Android	ads
914	1	20	Russia	Moscow	2	Android	organic
915	1	50	Russia	Rostov	3	iOS	ads
916	1	17	Russia	Aleksandriya	4	iOS	organic
917	0	22	Russia	Kazan	3	Android	ads
918	0	22	Turkey	Ankara	0	Android	organic
919	1	39	Ukraine	Dnipro	4	iOS	organic
920	0	57	Finland	Kokkola	1	iOS	organic
921	1	51	Russia	Sarov	0	iOS	organic
922	0	43	Russia	Saint Petersburg	2	iOS	ads
923	0	19	Russia	Volzhskiy	1	iOS	organic
924	0	32	Russia	Bugulma	0	Android	organic
925	1	17	Russia	Sarapul	0	iOS	ads
926	0	43	Russia	Syktyvkar	0	Android	organic
927	1	23	Russia	Samara	0	Android	organic
928	1	29	Russia	Tyumen	2	Android	ads
929	0	33	Russia	Nizhniy Novgorod	4	iOS	ads
930	0	18	Russia	Moscow	0	Android	organic
931	1	45	Russia	Bratsk	3	iOS	ads
932	1	21	Russia	Yoshkar-Ola	4	Android	ads
933	1	49	Russia	Vladivostok	3	iOS	organic
934	1	17	Russia	Moscow	4	Android	organic
935	1	19	Russia	Tolyatti	3	Android	ads
936	1	22	Russia	Aleysk	2	Android	ads
937	1	40	Russia	Moscow	3	Android	ads
938	1	36	Finland	Naantali	4	Android	organic
939	1	22	Russia	Samara	3	Android	ads
940	1	19	Russia	Yuzhno-Sakhalinsk	1	Android	organic
941	1	24	Russia	Ulan-Ude	0	Android	organic
942	1	22	Russia	Krasnotur’insk	4	Android	organic
943	0	28	Russia	Krasnoyarsk	0	Android	ads
944	1	16	Russia	Kamyshin	0	Android	organic
945	1	18	Russia	Volgograd	4	Android	ads
946	1	21	Finland	Vantaa	1	Android	ads
947	1	22	Russia	Moscow	2	Android	organic
948	0	29	Russia	Moscow	4	Android	ads
949	0	17	Ukraine	Sumy	2	iOS	organic
950	1	20	Russia	Perm	4	Android	ads
951	1	20	Russia	Zheleznogorsk	0	Android	ads
952	0	34	Russia	Abakan	2	Android	ads
953	1	21	Russia	Voronezh	1	Android	ads
954	1	28	Russia	Usol’ye-Sibirskoye	2	Android	organic
956	0	20	Russia	Saidkent	0	iOS	organic
957	0	15	Russia	Noginsk	4	iOS	ads
958	1	19	Russia	Tula	2	Android	organic
959	0	30	Russia	Novyy Urengoy	2	iOS	organic
960	0	37	Russia	Volgograd	1	Android	organic
961	0	25	Belarus	Mahilyow	2	Android	ads
962	0	33	Russia	Saint Petersburg	1	Android	ads
963	0	21	Russia	Perm	3	Android	organic
964	1	32	Russia	Lyubertsy	3	Android	ads
965	0	29	Russia	Krasnoyarsk	1	Android	organic
966	1	38	Russia	Zhirnovsk	0	Android	organic
967	0	29	Russia	Livny	2	Android	ads
968	0	28	Russia	Kazan	3	Android	ads
969	0	21	Russia	Sochi	2	iOS	organic
970	1	42	Russia	Novotroitsk	3	iOS	ads
971	1	48	Russia	Blagoveshchensk	4	iOS	organic
972	1	15	Russia	Moscow	0	Android	organic
973	1	21	Ukraine	Oleksandrivka	4	Android	organic
974	1	36	Russia	Cheboksary	3	iOS	ads
975	1	37	Kazakhstan	Öskemen	3	Android	organic
976	0	20	Russia	Ishimbay	4	Android	ads
977	0	41	Russia	Sergiyev Posad	4	iOS	ads
978	1	25	Russia	Engels	2	iOS	organic
979	1	17	Russia	Kovrov	3	iOS	organic
980	0	24	Russia	Saint Petersburg	3	Android	ads
981	1	26	Russia	Moscow	4	iOS	ads
982	1	20	Azerbaijan	Baku	0	iOS	organic
983	1	18	Finland	Tampere	2	Android	ads
984	1	20	Russia	Arkhangelsk	4	Android	ads
985	1	18	Russia	Irkutsk	4	Android	organic
986	0	38	Russia	Cherepovets	4	Android	organic
987	0	34	Russia	Makhachkala	0	Android	ads
988	0	25	Russia	Ulan-Ude	2	Android	ads
989	0	43	Russia	Petropavlovsk-Kamchatskiy	1	Android	ads
990	1	21	Russia	Penza	4	Android	organic
991	1	18	Russia	Moscow	3	Android	ads
992	0	54	Russia	Saint Petersburg	0	Android	ads
993	1	33	Russia	Moscow	3	Android	organic
994	1	21	Russia	Samara	4	iOS	organic
995	0	34	Russia	Konakovo	2	iOS	organic
996	0	18	Russia	Moscow	2	iOS	organic
997	1	25	Russia	Bol’sheust’ikinskoye	2	iOS	organic
998	0	33	Russia	Vichuga	4	iOS	organic
999	0	17	Russia	Moscow	1	Android	ads
1000	0	61	Russia	Moscow	0	iOS	ads
1001	1	20	Russia	Penza	2	iOS	ads
1002	1	19	Russia	Omsk	2	Android	ads
1003	1	22	Russia	Budënnovsk	2	Android	ads
1004	1	46	Azerbaijan	Baku	0	iOS	ads
1005	1	43	Russia	Korolëv	1	Android	organic
1006	0	17	Russia	Moscow	2	iOS	ads
1007	1	28	Russia	Moscow	4	Android	organic
1008	1	37	Russia	Protvino	2	iOS	ads
1009	1	17	Russia	Kazan	0	Android	organic
1010	1	18	Russia	Rostov	2	iOS	ads
1011	1	25	Russia	Kizlyar	2	Android	ads
1012	1	19	Russia	Gulkevichi	1	iOS	ads
1013	1	14	Russia	Aksay	3	Android	organic
1014	0	25	Russia	Saint Petersburg	1	Android	ads
1015	1	19	Russia	Izobil’nyy	3	Android	ads
1016	1	29	Russia	Ust’-Charyshskaya Pristan’	4	Android	organic
1017	0	32	Russia	Saratov	0	Android	ads
1018	1	26	Russia	Moscow	1	Android	ads
1019	1	17	Russia	Saint Petersburg	4	Android	ads
1020	0	34	Kazakhstan	Zhezqazghan	3	Android	ads
1021	0	17	Russia	Taganrog	1	iOS	organic
1022	1	15	Kazakhstan	Temirtaū	4	Android	ads
1023	1	30	Russia	Tyumen	1	Android	organic
1024	1	30	Turkey	Diyarbakır	2	Android	organic
1025	1	17	Russia	Ulyanovsk	0	Android	ads
1026	0	16	Russia	Saint Petersburg	4	iOS	ads
1027	0	16	Russia	Perm	3	iOS	organic
1028	1	26	Russia	Prokopyevsk	1	iOS	ads
1029	1	25	Russia	Kaliningrad	1	iOS	ads
1030	0	16	Russia	Ukhta	1	Android	ads
1031	0	34	Russia	Dzerzhinsk	1	Android	organic
1032	0	15	Russia	Kiselëvsk	0	iOS	organic
1033	0	20	Russia	Nagutskoye	2	Android	ads
1034	1	19	Russia	Chita	3	Android	organic
1035	0	29	Russia	Moscow	2	iOS	organic
1036	0	22	Russia	Berdsk	1	Android	organic
1037	1	24	Russia	Klimovsk	1	Android	organic
1038	1	31	Russia	Saint Petersburg	4	Android	organic
1039	1	23	Russia	Barnaul	4	iOS	organic
1040	0	34	Kazakhstan	Temirtaū	0	Android	ads
1041	1	46	Russia	Yelabuga	3	iOS	ads
1042	0	17	Russia	Moscow	2	iOS	ads
1043	0	28	Russia	Lipetsk	0	iOS	organic
1044	1	45	Russia	Salavat	0	Android	ads
1045	0	27	Russia	Moscow	0	Android	organic
1046	0	26	Russia	Saint Petersburg	0	iOS	organic
1047	0	19	Russia	Yemanzhelinsk	3	Android	organic
1048	0	24	Russia	Rostov	0	Android	ads
1049	1	45	Russia	Parma	1	iOS	organic
1050	1	18	Russia	Moscow	4	Android	organic
1051	1	18	Russia	Perm	2	Android	organic
1052	0	39	Russia	Khabarovsk	2	Android	ads
1053	0	17	Russia	Kursk	2	Android	ads
1054	1	19	Russia	Kuba-Taba	0	iOS	ads
1055	0	48	Russia	Naro-Fominsk	1	Android	organic
1056	0	31	Turkey	Adana	4	iOS	ads
1057	0	18	Ukraine	Lviv	0	Android	ads
1058	1	17	Russia	Moscow	2	iOS	ads
1059	0	31	Russia	Rzhev	2	iOS	organic
1060	1	15	Russia	Kartaly	4	Android	organic
1061	0	35	Russia	Usinsk	0	iOS	ads
1062	0	20	Russia	Magnitogorsk	4	Android	ads
1063	0	34	Russia	Kopeysk	0	iOS	organic
1064	0	17	Russia	Noyabrsk	2	Android	organic
1065	1	33	Russia	Tuymazy	3	iOS	ads
1066	0	30	Russia	Shchelkovo	1	iOS	ads
1067	0	21	Kazakhstan	Almaty	4	Android	organic
1068	1	25	Russia	Stavropol	1	Android	ads
1069	0	15	Russia	Chelyabinsk	1	iOS	ads
1070	1	25	Russia	Zelenogorsk	3	Android	organic
1071	0	24	Russia	Samara	1	Android	organic
1072	1	56	Russia	Moscow	3	Android	organic
1073	1	38	Russia	Makaryev	0	Android	ads
1074	1	32	Russia	Tomsk	2	Android	ads
1075	1	18	Russia	Moscow	3	iOS	ads
1076	1	31	Kazakhstan	Qaskeleng	2	iOS	organic
1077	1	19	Belarus	Minsk	1	iOS	ads
1078	1	32	Ukraine	Kovel	4	iOS	organic
1079	1	30	Russia	Zheleznogorsk-Ilimskiy	4	Android	organic
1080	1	29	Russia	Moscow	3	Android	ads
1081	1	30	Russia	Krasnoyarsk	3	Android	ads
1082	0	29	Russia	Chelyabinsk	1	iOS	ads
1083	0	40	Russia	Minyar	4	Android	ads
1084	0	38	Russia	Naberezhnyye Chelny	0	iOS	ads
1085	1	15	Russia	Oktyabrskiy	2	iOS	ads
1086	1	30	Russia	Moscow	2	Android	ads
1087	0	18	Ukraine	Kyiv	1	Android	ads
1088	1	31	Russia	Vladimir	4	iOS	ads
1089	1	21	Russia	Ulan-Ude	4	iOS	ads
1090	0	21	Russia	Perm	1	Android	ads
1091	0	21	Russia	Moscow	4	Android	ads
1092	0	16	Russia	Chelyabinsk	1	iOS	ads
1093	0	19	Russia	Svobodnyy	2	iOS	ads
1094	0	20	Russia	Moscow	3	Android	ads
1095	0	28	Russia	Kotovsk	2	iOS	ads
1096	1	44	Russia	Primorsko-Akhtarsk	2	iOS	organic
1097	0	15	Russia	Astrakhan	4	iOS	organic
1098	1	18	Ukraine	Poltava	4	Android	organic
1099	0	19	Russia	Naro-Fominsk	2	Android	organic
1100	1	31	Russia	Vologda	2	iOS	ads
1101	1	37	Russia	Shuya	3	Android	ads
1102	0	28	Russia	Shatura	4	Android	ads
1103	1	21	Russia	Yekaterinburg	4	Android	organic
1104	1	40	Russia	Yalutorovsk	0	Android	ads
1105	1	24	Russia	Kursk	2	iOS	organic
1106	0	21	Russia	Vladimir	4	Android	ads
1107	1	23	Russia	Moscow	3	Android	ads
1108	1	15	Russia	Kozlovka	4	Android	ads
1109	1	23	Russia	Shchëkino	1	Android	ads
1110	1	20	Russia	Kolomna	4	Android	organic
1111	1	39	Russia	Zima	0	Android	ads
1112	0	22	Russia	Moscow	0	iOS	ads
1113	1	18	Russia	Danilov	2	Android	organic
1114	1	18	Russia	Moscow	3	Android	ads
1115	1	23	Belarus	Minsk	2	iOS	ads
1116	1	33	Russia	Novyy Urengoy	3	iOS	organic
1117	0	17	Russia	Omsk	2	Android	ads
1118	1	20	Ukraine	Mukacheve	1	Android	organic
1119	1	18	Russia	Prokopyevsk	4	iOS	ads
1120	1	38	Russia	Voronezh	2	iOS	ads
1121	0	23	Russia	Cherepovets	3	iOS	ads
1122	0	21	Russia	Mikhaylovka	3	iOS	ads
1123	0	23	Russia	Moscow	4	Android	organic
1124	0	42	Russia	Saint Petersburg	4	Android	ads
1125	0	37	Russia	Magnitogorsk	4	Android	organic
1126	1	29	Russia	Moscow	4	iOS	ads
1127	1	33	Russia	Arsenyev	3	Android	ads
1128	0	28	Russia	Votkinsk	4	Android	organic
1129	1	52	Russia	Moscow	3	iOS	ads
1130	1	38	Russia	Saint Petersburg	0	iOS	ads
1131	0	42	Russia	Moscow	0	iOS	organic
1132	0	25	Russia	Baymak	1	Android	organic
1133	0	38	Russia	Astrakhan	2	iOS	organic
1134	1	44	Russia	Arkhangelsk	1	Android	organic
1135	1	20	Russia	Saint Petersburg	0	Android	ads
1136	1	44	Russia	Kursk	1	Android	ads
1137	0	38	Russia	Smolensk	3	iOS	ads
1138	0	16	Ukraine	Boryspil	4	iOS	ads
1139	0	19	Russia	Naberezhnyye Chelny	4	iOS	ads
1140	0	26	Russia	Moscow	3	Android	organic
1141	1	32	Russia	Moscow	2	Android	ads
1142	1	32	Russia	Moscow	2	Android	ads
1143	0	16	Russia	Moscow	0	Android	ads
1144	1	27	Russia	Volgograd	1	Android	ads
1145	0	24	Russia	Naberezhnyye Chelny	2	Android	organic
1146	1	16	Russia	Novosibirsk	3	iOS	ads
1147	1	20	Russia	Perm	2	Android	ads
1148	0	20	Russia	Yoshkar-Ola	3	iOS	ads
1149	1	19	Russia	Volgograd	3	iOS	organic
1150	1	21	Russia	Taganrog	3	iOS	organic
1151	1	23	Russia	Ufa	1	Android	ads
1152	1	19	Russia	Barnaul	0	Android	ads
1153	1	26	Russia	Glazov	1	iOS	ads
1154	0	34	Russia	Nizhneye Sancheleyevo	4	Android	ads
1155	1	31	Russia	Moscow	4	Android	ads
1156	0	18	Russia	Yessentuki	0	Android	ads
1157	1	24	Russia	Ulan-Ude	4	iOS	ads
1158	0	41	Russia	Bataysk	0	Android	organic
1159	1	16	Russia	Tula	1	Android	organic
1160	0	21	Finland	Nastola	2	iOS	ads
1161	1	24	Russia	Cherlak	2	Android	ads
1162	1	25	Ukraine	Khmelnytskyi	3	iOS	ads
1163	1	16	Russia	Saint Petersburg	1	Android	ads
1164	1	16	Turkey	Kozlu	0	Android	ads
1165	0	25	Russia	Astrakhan	2	Android	organic
1166	0	29	Russia	Moscow	0	iOS	ads
1167	1	33	Russia	Moscow	1	Android	organic
1168	1	44	Russia	Ufa	2	Android	ads
1169	1	42	Russia	Balashov	1	iOS	organic
1170	1	37	Russia	Moscow	3	Android	organic
1171	1	35	Russia	Rodniki	4	iOS	ads
1172	1	36	Russia	Moscow	0	Android	ads
1173	1	19	Russia	Berdsk	2	Android	ads
1174	1	22	Russia	Nizhniy Novgorod	0	Android	organic
1175	1	38	Russia	Tver	3	iOS	ads
1176	0	21	Russia	Komsomolskoye	0	iOS	ads
1177	1	27	Russia	Krasnoyarsk	0	iOS	ads
1178	0	15	Ukraine	Kryvyi Rih	4	Android	organic
1179	1	17	Russia	Yakutsk	2	Android	ads
1180	0	34	Russia	Pyatigorsk	0	iOS	organic
1181	1	30	Russia	Saransk	3	iOS	ads
1182	1	44	Russia	Ufa	2	Android	ads
1183	1	21	Russia	Tolyatti	3	Android	ads
1184	1	17	Russia	Semiluki	1	iOS	organic
1185	1	14	Russia	Buzuluk	2	Android	ads
1186	1	39	Russia	Moscow	3	iOS	organic
1187	1	18	Russia	Derbetovka	0	iOS	organic
1188	1	15	Russia	Kazan	1	Android	ads
1189	0	18	Russia	Engels	2	Android	ads
1190	0	24	Russia	Saint Petersburg	4	Android	ads
1191	1	14	Russia	Pechora	2	Android	ads
1192	0	16	Russia	Serpukhov	1	iOS	ads
1193	0	23	Russia	Moscow	4	iOS	ads
1194	1	34	Russia	Novosibirsk	2	Android	ads
1195	0	20	Russia	Yekaterinburg	2	iOS	organic
1196	1	18	Russia	Moscow	2	Android	ads
1197	0	33	Russia	Nizhniy Novgorod	1	iOS	organic
1198	1	20	Russia	Khatassy	4	Android	ads
1199	0	21	Russia	Komsomol’sk-na-Amure	0	Android	ads
1200	1	24	Russia	Saint Petersburg	3	Android	ads
1201	1	22	Russia	Saint Petersburg	4	Android	ads
1202	0	28	Russia	Sochi	3	iOS	organic
1203	0	33	Russia	Mikhaylovka	3	iOS	organic
1204	0	51	Kazakhstan	Almaty	3	Android	ads
1205	0	23	Ukraine	Dnipro	2	Android	organic
1206	0	36	Russia	Kazan	2	Android	ads
1207	1	77	Russia	Satka	2	Android	ads
1208	1	44	Russia	Saint Petersburg	4	iOS	organic
1209	0	38	Russia	Engels	2	iOS	ads
1210	1	30	Ukraine	Mariupol	2	Android	ads
1211	1	20	Russia	Yekaterinburg	4	iOS	ads
1212	1	17	Russia	Anapa	4	iOS	ads
1213	0	27	Russia	Podstepki	2	iOS	organic
1214	0	20	Russia	Koryazhma	1	Android	organic
1215	1	22	Finland	Urjala	3	Android	organic
1216	1	38	Russia	Saint Petersburg	1	Android	ads
1217	1	29	Russia	Leninogorsk	4	iOS	organic
1218	1	19	Russia	Bratki	2	iOS	ads
1219	1	40	Russia	Naberezhnyye Chelny	4	iOS	ads
1220	0	19	Russia	Chita	3	Android	ads
1221	0	26	Russia	Galich	4	iOS	organic
1222	1	38	Russia	Blagoveshchensk	4	Android	ads
1223	0	19	Russia	Vityazevo	2	Android	ads
1224	0	17	Russia	Kirzhach	2	Android	ads
1225	1	21	Russia	Makhachkala	0	iOS	organic
1226	1	30	Russia	Chekhov	2	Android	organic
1227	1	21	Russia	Kursk	4	iOS	organic
1228	0	19	Russia	Klimovsk	2	Android	ads
1229	0	18	Russia	Tomsk	4	iOS	ads
1230	0	16	Belarus	Vitsyebsk	4	Android	organic
1231	1	36	Russia	Nakhodka	2	iOS	organic
1232	0	37	Ukraine	Kyiv	4	Android	organic
1233	1	38	Russia	Rostov	4	iOS	ads
1234	0	20	Russia	Ulyanovsk	2	Android	organic
1235	0	37	Russia	Shelekhov	4	Android	ads
1236	0	19	Russia	Penza	2	iOS	ads
1237	1	61	Russia	Verkhniye Tatyshly	0	Android	ads
1238	0	15	Russia	Vologda	3	Android	ads
1239	0	15	Russia	Pskov	1	Android	organic
1240	1	39	Russia	Orenburg	4	Android	ads
1241	0	19	Russia	Kizlyar	4	iOS	organic
1242	1	16	Russia	Podolsk	3	Android	ads
1243	1	32	Russia	Krasnogorsk	0	Android	ads
1244	0	20	Russia	Moscow	0	Android	ads
1245	0	24	Belarus	Krupki	1	iOS	organic
1246	1	18	Russia	Zarechnyy	4	iOS	organic
1247	0	18	Belarus	Dzyarzhynsk	1	Android	ads
1248	0	32	Russia	Kostomuksha	1	Android	organic
1249	1	21	Russia	Moscow	4	Android	organic
1250	1	23	Russia	Moscow	0	Android	ads
1251	1	46	Russia	Zelenokumsk	2	iOS	ads
1252	0	51	Russia	Voronezh	0	Android	ads
1253	1	35	Russia	Ozërsk	0	Android	ads
1254	1	25	Russia	Irkutsk	2	Android	ads
1255	0	41	Russia	Gay	4	Android	organic
1256	0	21	Russia	Arzamas	1	Android	organic
1257	1	32	Russia	Saint Petersburg	1	Android	ads
1258	0	23	Russia	Belgorod	1	Android	ads
1259	1	31	Russia	Saint Petersburg	2	iOS	ads
1260	0	39	Russia	Zlatoust	0	Android	ads
1261	0	18	Russia	Kazan	3	Android	organic
1262	1	17	Russia	Moscow	3	Android	ads
1263	0	25	Russia	Tambov	0	Android	organic
1264	1	19	Azerbaijan	Baku	1	Android	ads
1265	1	17	Russia	Meleuz	3	Android	ads
1266	1	24	Turkey	Lüleburgaz	0	iOS	ads
1267	1	19	Azerbaijan	Qusar	2	Android	ads
1268	0	33	Russia	Rostov	4	Android	organic
1269	0	51	Belarus	Maladzyechna	2	Android	ads
1270	1	21	Russia	Verkhnyaya Salda	0	iOS	ads
1271	1	22	Russia	Saint Petersburg	2	Android	ads
1272	1	32	Russia	Gusinoozërsk	1	Android	organic
1273	1	18	Russia	Argun	0	Android	ads
1274	1	18	Russia	Nizhniy Lomov	0	iOS	ads
1275	0	14	Russia	Kamensk-Ural’skiy	2	Android	ads
1276	1	21	Russia	Yelizovo	2	iOS	ads
1277	1	23	Russia	Voronezh	1	Android	ads
1278	1	22	Russia	Saint Petersburg	3	iOS	ads
1279	0	18	Russia	Krasnoyarsk	4	Android	organic
1280	1	34	Russia	Yekaterinburg	1	Android	organic
1281	0	33	Russia	Volgograd	2	Android	ads
1282	0	17	Turkey	Söke	0	Android	ads
1283	1	25	Cyprus	Germasógeia	2	Android	ads
1284	1	29	Russia	Saint Petersburg	0	Android	ads
1285	0	30	Russia	Penza	3	Android	ads
1286	0	48	Russia	Belogorsk	1	Android	organic
1287	1	15	Russia	Ulyanovsk	1	Android	ads
1288	1	19	Russia	Lipetsk	0	iOS	ads
1289	1	21	Russia	Voronezh	1	Android	ads
1290	1	42	Russia	Nazran	2	Android	ads
1291	1	36	Russia	Moscow	3	Android	organic
1292	1	26	Russia	Cherdyn	0	Android	ads
1293	1	22	Russia	Achinsk	3	iOS	organic
1294	1	16	Belarus	Minsk	0	iOS	ads
1295	1	25	Russia	Moscow	3	Android	ads
1296	0	16	Russia	Saint Petersburg	1	iOS	ads
1297	0	36	Russia	Zol’noye	2	iOS	organic
1298	0	28	Russia	Aksay	2	Android	organic
1299	1	40	Russia	Kazan	2	Android	ads
1300	0	28	Ukraine	Alchevsk	2	Android	organic
1301	1	40	Russia	Staraya Russa	0	Android	organic
1302	1	43	Russia	Gus’-Khrustal’nyy	4	Android	ads
1303	0	27	Russia	Moscow	3	iOS	organic
1304	0	32	Russia	Nizhniy Novgorod	1	iOS	ads
1305	0	16	Kazakhstan	Türkistan	3	Android	ads
1306	1	23	Russia	Arkhangelsk	0	Android	organic
1307	1	15	Russia	Arzamas	0	Android	ads
1308	0	24	Russia	Rostov	2	iOS	ads
1309	0	44	Russia	Krasnokamsk	2	iOS	organic
1310	1	31	Russia	Kostroma	4	iOS	organic
1311	1	33	Russia	Stavropol	2	iOS	organic
1312	1	17	Russia	Ryazan	0	Android	ads
1313	1	22	Russia	Moscow	3	iOS	ads
1314	1	21	Ukraine	Nemishayeve	0	iOS	organic
1315	0	18	Ukraine	Irpin	3	Android	organic
1316	1	25	Russia	Moscow	1	Android	ads
1317	0	22	Ukraine	Kryvyi Rih	2	iOS	ads
1318	1	33	Russia	Anapa	0	Android	organic
1319	0	39	Russia	Samara	2	iOS	ads
1320	1	23	Russia	Surgut	2	Android	organic
1321	1	23	Russia	Chelyabinsk	4	Android	organic
1322	1	41	Russia	Kolpino	4	Android	organic
1323	0	27	Russia	Chaykovskiy	0	Android	ads
1324	1	35	Russia	Ufa	4	iOS	ads
1325	1	45	Russia	Gubkin	0	Android	ads
1326	1	18	Russia	Apatity	2	Android	organic
1327	0	18	Russia	Bavly	1	Android	organic
1328	0	14	Russia	Saint Petersburg	1	Android	organic
1329	1	17	Russia	Yugorsk	0	iOS	organic
1330	1	35	Russia	Klintsy	2	Android	ads
1331	0	38	Russia	Orël	4	Android	ads
1332	1	18	Russia	Yekaterinburg	3	Android	organic
1333	1	24	Russia	Zhukovskiy	1	Android	organic
1334	1	57	Russia	Topki	1	Android	ads
1335	1	30	Russia	Dolgoprudnyy	0	iOS	ads
1336	0	33	Kazakhstan	Zhetisay	1	iOS	ads
1337	0	22	Russia	Verkhnyaya Khava	0	iOS	ads
1338	1	25	Russia	Moscow	4	Android	organic
1339	1	20	Russia	Murom	0	Android	organic
1340	0	20	Russia	Volgograd	1	Android	ads
1341	0	31	Belarus	Pyetrykaw	2	Android	organic
1342	1	20	Russia	Nalchik	0	Android	organic
1343	1	25	Russia	Kemerovo	4	Android	ads
1344	1	28	Russia	Moscow	1	Android	ads
1345	0	21	Russia	Groznyy	3	iOS	organic
1346	0	29	Kazakhstan	Almaty	1	Android	organic
1347	1	19	Russia	Solnechnogorsk	1	Android	ads
1348	1	32	Belarus	Minsk	2	Android	organic
1349	1	17	Russia	Taganrog	1	Android	ads
1350	0	22	Russia	Rybinsk	4	Android	ads
1351	1	33	Russia	Kaluga	3	Android	ads
1352	0	27	Russia	Makhachkala	2	iOS	organic
1353	0	52	Russia	Barnaul	3	Android	ads
1354	0	31	Russia	Nizhnevartovsk	0	Android	organic
1355	0	18	Russia	Zelenogorsk	1	iOS	ads
1356	1	39	Ukraine	Kyiv	4	Android	ads
1357	1	22	Russia	Uchaly	2	Android	ads
1358	0	16	Russia	Moscow	4	Android	ads
1359	0	48	Belarus	Navapolatsk	1	Android	organic
1360	1	29	Russia	Moscow	2	Android	ads
1361	0	20	Russia	Kazan	0	Android	organic
1362	1	23	Russia	Urus-Martan	4	iOS	organic
1363	0	26	Russia	Kursk	0	iOS	organic
1364	1	36	Russia	Salavat	1	iOS	ads
1365	1	32	Russia	Kropotkin	3	Android	organic
1366	1	17	Russia	Saint Petersburg	3	Android	ads
1367	1	42	Russia	Kaliningrad	4	Android	ads
1368	1	20	Russia	Chita	3	Android	ads
1369	0	20	Russia	Severobaykalsk	4	Android	organic
1370	1	35	Russia	Vladikavkaz	4	Android	organic
1371	1	33	Russia	Kstovo	4	iOS	organic
1372	1	35	Russia	Moscow	1	Android	ads
1373	0	26	Ukraine	Lviv	2	iOS	ads
1374	0	24	Russia	Moscow	2	iOS	ads
1375	0	20	Russia	Katav-Ivanovsk	1	Android	ads
1376	1	54	Russia	Moscow	4	Android	organic
1377	0	27	Russia	Nizhnevartovsk	3	Android	organic
1378	0	18	Russia	Gatchina	2	iOS	ads
1379	1	22	Russia	Fokino	1	Android	organic
1380	1	19	Russia	Al’mukhametovo	0	Android	organic
1381	0	30	Russia	Kirovo-Chepetsk	3	Android	organic
1382	0	21	Russia	Moscow	1	iOS	ads
1383	0	18	Russia	Novyy Urengoy	3	Android	ads
1384	1	18	Russia	Ulan-Ude	0	iOS	ads
1385	1	25	Russia	Barnaul	2	Android	ads
1386	1	31	Russia	Ulan-Ude	3	Android	organic
1387	0	21	Russia	Velikiye Luki	0	Android	ads
1388	0	34	Russia	Golyshmanovo	3	Android	organic
1389	1	21	Russia	Saint Petersburg	4	Android	organic
1390	1	22	Russia	Arkhangelsk	3	Android	ads
1391	0	17	Russia	Izhevsk	1	Android	ads
1392	1	49	Russia	Angarsk	2	iOS	ads
1393	1	40	Russia	Moscow	1	Android	ads
1394	1	21	Russia	Yoshkar-Ola	3	iOS	ads
1395	0	32	Russia	Nizhniy Novgorod	3	Android	ads
1396	0	31	Azerbaijan	Baku	2	iOS	ads
1397	1	20	Russia	Nizhniy Novgorod	2	Android	ads
1398	1	21	Russia	Bryansk	4	iOS	organic
1399	0	41	Russia	Moscow	3	Android	ads
1400	1	41	Russia	Achinsk	1	Android	organic
1401	0	23	Russia	Tyumen	0	Android	ads
1402	0	39	Russia	Volgograd	2	iOS	organic
1403	0	21	Russia	Ulyanovsk	1	iOS	ads
1404	0	19	Turkey	İzmir	2	Android	ads
1405	0	34	Russia	Leninogorsk	0	iOS	ads
1406	0	21	Russia	Saint Petersburg	0	iOS	ads
1407	0	20	Ukraine	Kramatorsk	4	iOS	ads
1408	1	28	Russia	Mikhaylovsk	0	Android	ads
1409	1	18	Russia	Angarsk	1	Android	organic
1410	1	40	Turkey	Gaziantep	2	Android	organic
1411	0	41	Russia	Krasnoufimsk	2	iOS	organic
1412	1	39	Russia	Bogotol	1	Android	organic
1413	0	17	Russia	Berëzovskiy	3	iOS	ads
1414	1	29	Russia	Moscow	0	Android	ads
1415	1	30	Turkey	Gümüşhane	3	Android	ads
1416	1	19	Estonia	Tallinn	3	Android	ads
1417	1	17	Russia	Irkutsk	2	Android	ads
1418	1	23	Russia	Belgorod	0	iOS	organic
1419	0	20	Russia	Zyazikov	0	Android	ads
1420	1	19	Russia	Saint Petersburg	3	iOS	ads
1421	1	25	Russia	Kazan	4	Android	ads
1422	0	16	Russia	Meleuz	2	Android	organic
1423	0	22	Russia	Piterka	2	Android	ads
1424	1	17	Russia	Novogagatli	2	iOS	organic
1425	0	16	Turkey	Istanbul	0	iOS	ads
1426	0	32	Russia	Kozelsk	4	iOS	ads
1427	1	20	Turkey	Sultanhanı	1	Android	ads
1428	0	21	Russia	Kotelnikovo	1	Android	ads
1429	1	28	Ukraine	Chernivtsi	0	iOS	ads
1430	1	28	Russia	Kirovo-Chepetsk	3	iOS	organic
1431	0	24	Russia	Novorossiysk	2	iOS	organic
1432	1	27	Russia	Moscow	4	Android	organic
1433	0	41	Russia	Verkhnyaya Khava	1	Android	ads
1434	0	21	Russia	Kamensk-Ural’skiy	2	iOS	ads
1435	1	22	Russia	Saint Petersburg	4	iOS	ads
1436	1	20	Russia	Ukhta	2	Android	ads
1437	0	21	Russia	Tyumen	4	Android	ads
1438	1	18	Russia	Moscow	2	Android	ads
1439	1	24	Russia	Irbit	2	Android	ads
1440	1	22	Russia	Gay	4	Android	ads
1441	1	26	Turkey	Istanbul	1	iOS	ads
1442	0	34	Russia	Nizhniy Tagil	1	Android	organic
1443	0	21	Russia	Voronezh	2	Android	organic
1444	1	14	Russia	Orël	3	Android	ads
1445	1	49	Russia	Amursk	4	Android	ads
1446	0	46	Russia	Glazov	4	iOS	organic
1447	0	18	Russia	Saint Petersburg	2	iOS	ads
1448	0	31	Russia	Pyatigorsk	0	iOS	ads
1449	0	68	Ukraine	Rubizhne	2	Android	ads
1450	1	20	Russia	Kurgan	0	Android	ads
1451	0	45	Russia	Naberezhnyye Chelny	4	Android	ads
1452	0	19	Russia	Ramenskoye	1	Android	ads
1453	1	27	Russia	Lesosibirsk	4	Android	ads
1454	1	18	Russia	Arkadak	3	Android	ads
1455	0	24	Russia	Tyumen	0	iOS	ads
1456	0	19	Russia	Khabarovsk	2	iOS	ads
1457	1	35	Russia	Mytishchi	3	Android	ads
1458	1	26	Russia	Moscow	3	Android	organic
1459	1	23	Russia	Moscow	0	Android	organic
1460	1	49	Russia	Kamyshlov	2	iOS	ads
1461	1	20	Russia	Moscow	0	Android	organic
1462	1	24	Russia	Saint Petersburg	0	iOS	ads
1463	0	46	Russia	Vologda	1	Android	ads
1464	1	35	Russia	Moscow	1	Android	organic
1465	1	39	Azerbaijan	Culfa	3	Android	ads
1466	1	23	Russia	Novocheboksarsk	2	iOS	ads
1467	0	26	Russia	Udomlya	1	iOS	ads
1468	1	18	Russia	Moscow	3	Android	ads
1469	0	30	Russia	Medvezhyegorsk	4	iOS	ads
1470	1	29	Russia	Komsomol’sk-na-Amure	2	iOS	ads
1471	0	36	Russia	Noginsk	3	Android	ads
1472	0	16	Russia	Astrakhan	4	iOS	organic
1473	1	22	Russia	Moscow	1	iOS	organic
1474	1	30	Russia	Lipetsk	2	iOS	organic
1475	0	25	Russia	Balakovo	2	Android	organic
1476	0	40	Russia	Tolyatti	0	iOS	organic
1477	0	40	Russia	Borovichi	1	Android	ads
1478	1	20	Russia	Zainsk	4	Android	organic
1479	0	25	Russia	Starobaltachevo	1	Android	organic
1480	1	25	Russia	Moscow	1	Android	ads
1481	1	49	Russia	Nizhniy Novgorod	4	Android	ads
1482	1	53	Russia	Kuybyshev	1	iOS	ads
1483	1	23	Russia	Novorossiysk	0	Android	ads
1484	1	15	Russia	Tyumen	0	Android	ads
1485	1	22	Russia	Moscow	0	Android	ads
1486	0	23	Russia	Moscow	3	iOS	organic
1487	1	30	Russia	Sorochinsk	2	iOS	ads
1488	0	15	Russia	Podolsk	1	Android	ads
1489	0	17	Russia	Liski	2	Android	organic
1490	1	20	Russia	Kanash	0	Android	ads
1491	1	21	Russia	Rasskazovo	0	Android	ads
1492	0	20	Russia	Zlatoust	2	Android	ads
1493	0	22	Russia	Moscow	2	Android	ads
1494	0	21	Russia	Krasnodar	3	iOS	ads
1495	0	15	Russia	Vologda	3	Android	ads
1496	0	18	Russia	Moscow	1	iOS	ads
1497	1	20	Russia	Murmansk	2	Android	ads
1498	1	16	Russia	Moscow	0	iOS	organic
1499	0	34	Russia	Vladivostok	3	Android	ads
1500	0	45	Russia	Ulyanovsk	0	iOS	organic
1501	0	38	Turkey	Istanbul	4	iOS	organic
1502	0	24	Russia	Samara	2	Android	ads
1503	1	21	Russia	Ryazan	4	Android	organic
1504	1	19	Belarus	Babruysk	4	Android	ads
1505	1	48	Russia	Barnaul	2	Android	ads
1506	1	28	Russia	Lakkha Nëvre	0	Android	organic
1507	0	18	Russia	Smolensk	4	Android	ads
1508	0	40	Russia	Novocherkassk	2	Android	organic
1509	0	29	Russia	Krasnokamsk	0	iOS	organic
1510	0	19	Russia	Moscow	3	Android	organic
1511	1	21	Russia	Yakutsk	0	Android	ads
1512	0	19	Russia	Vladimir	0	Android	organic
1513	1	17	Russia	Ulyanovsk	4	Android	ads
1514	0	26	Russia	Kamen’-na-Obi	0	iOS	ads
1515	1	21	Russia	Novomoskovsk	4	Android	organic
1516	1	31	Russia	Moscow	2	Android	organic
1517	1	15	Russia	Moscow	0	Android	ads
1518	0	18	Russia	Balashikha	1	iOS	organic
1519	1	24	Russia	Moscow	0	iOS	organic
1520	1	23	Russia	Chita	0	Android	organic
1521	1	29	Russia	Nevinnomyssk	4	Android	ads
1522	0	52	Russia	Blagoveshchensk	3	iOS	ads
1523	1	32	Russia	Moscow	4	Android	ads
1524	0	25	Russia	Moscow	0	Android	ads
1525	1	17	Russia	Nalchik	2	Android	organic
1526	0	35	Russia	Ryazan	0	Android	ads
1527	1	54	Russia	Tavda	2	Android	ads
1528	1	17	Russia	Ussuriysk	1	iOS	organic
1529	1	19	Russia	Chelyabinsk	0	Android	ads
1530	0	44	Russia	Orël	2	Android	ads
1531	1	34	Ukraine	Kramatorsk	3	Android	ads
1532	1	34	Russia	Arkhangelskoye	2	iOS	ads
1533	0	23	Russia	Sadovoye	4	Android	ads
1534	1	27	Russia	Astrakhan	1	Android	ads
1535	1	27	Russia	Moscow	3	iOS	ads
1536	1	19	Russia	Moscow	3	iOS	ads
1537	1	34	Russia	Tolyatti	3	Android	ads
1538	1	39	Russia	Samara	2	iOS	ads
1539	1	38	Russia	Zlatoust	1	Android	ads
1540	0	16	Russia	Ulyanovsk	0	Android	organic
1541	0	21	Belarus	Homyel’	0	Android	ads
1542	1	32	Russia	Moscow	2	Android	organic
1543	1	30	Belarus	Homyel’	4	iOS	ads
1544	0	44	Russia	Moscow	2	Android	organic
1545	0	42	Russia	Vasil’yevka	1	Android	organic
1546	1	47	Russia	Moscow	4	Android	organic
1547	1	28	Russia	Stavropol	3	Android	ads
1548	1	33	Ukraine	Babyn	2	Android	organic
1549	0	47	Russia	Samara	2	iOS	organic
1550	0	14	Russia	Novoshakhtinsk	1	Android	organic
1551	1	23	Russia	Petrozavodsk	3	iOS	organic
1552	0	23	Russia	Ust’-Nera	4	Android	organic
1553	0	17	Russia	Tomsk	1	Android	ads
1554	1	15	Russia	Gudermes	0	Android	ads
1555	1	19	Russia	Kirov	4	Android	organic
1556	0	15	Russia	Kursk	2	iOS	ads
1557	0	33	Russia	Kolpino	0	iOS	ads
1558	0	26	Belarus	Minsk	3	Android	organic
1559	0	17	Russia	Spassk-Dal’niy	4	iOS	ads
1560	1	36	Russia	Orenburg	0	Android	organic
1561	0	43	Russia	Kupanskoye	2	Android	organic
1562	1	43	Russia	Balashikha	3	iOS	ads
1563	1	38	Russia	Volgograd	1	Android	ads
1564	1	46	Russia	Vologda	3	Android	organic
1565	1	16	Russia	Moscow	0	Android	organic
1566	0	24	Russia	Kyzyl	4	Android	organic
1567	0	30	Russia	Saint Petersburg	3	Android	organic
1568	0	19	Ukraine	Donetsk	0	Android	ads
1569	1	34	Russia	Moscow	3	Android	ads
1570	1	25	Russia	Saratov	4	Android	ads
1571	1	16	Russia	Nizhniy Novgorod	4	iOS	ads
1572	0	36	Russia	Moscow	0	iOS	ads
1573	1	34	Ukraine	Sambir	2	Android	organic
1574	0	22	Russia	Volgograd	1	Android	organic
1575	1	16	Russia	Ruza	4	iOS	ads
1576	1	25	Russia	Beloretsk	1	Android	ads
1577	0	19	Russia	Moscow	3	Android	ads
1578	0	17	Russia	Saint Petersburg	1	iOS	organic
1579	1	19	Russia	Novosibirsk	3	Android	ads
1580	1	34	Russia	Moscow	1	iOS	organic
1581	1	21	Ukraine	Kharkiv	4	iOS	ads
1582	0	28	Russia	Kostroma	4	Android	ads
1583	1	53	Russia	Saint Petersburg	3	Android	organic
1584	0	20	Russia	Lipetsk	4	Android	ads
1585	1	23	Russia	Saint Petersburg	4	iOS	ads
1586	1	54	Russia	Salsk	1	iOS	ads
1587	0	37	Russia	Moscow	2	iOS	ads
1588	0	22	Azerbaijan	Mingəçevir	2	iOS	organic
1589	1	18	Finland	Hamina	2	Android	organic
1590	0	24	Finland	Turku	1	Android	ads
1591	0	16	Russia	Timashevsk	2	Android	ads
1592	0	36	Russia	Moscow	0	iOS	ads
1593	1	29	Russia	Moscow	1	Android	organic
1594	1	39	Russia	Ostrov	2	Android	ads
1595	1	19	Russia	Moscow	2	Android	ads
1596	1	23	Russia	Moscow	4	Android	organic
1597	0	34	Russia	Tomsk	0	Android	ads
1598	1	20	Russia	Moscow	2	Android	ads
1599	1	20	Russia	Vladivostok	1	Android	ads
1600	1	34	Russia	Murmansk	0	iOS	ads
1601	1	32	Russia	Saint Petersburg	2	iOS	organic
1602	1	45	Russia	Saint Petersburg	0	Android	ads
1603	0	19	Ukraine	Konotop	1	iOS	ads
1604	1	36	Russia	Kurchatov	4	Android	organic
1605	0	26	Russia	Solikamsk	4	iOS	ads
1606	1	50	Russia	Gusev	0	Android	organic
1607	0	43	Russia	Moscow	0	iOS	ads
1608	0	31	Russia	Desnogorsk	3	Android	organic
1609	0	20	Russia	Irkutsk	3	iOS	ads
1610	1	40	Russia	Millerovo	0	Android	organic
1611	0	57	Russia	Tobolsk	0	iOS	ads
1612	1	42	Russia	Nizhniy Tagil	4	Android	ads
1613	1	19	Russia	Moscow	4	iOS	ads
1614	0	17	Russia	Vorkuta	3	Android	organic
1615	1	38	Russia	Novosibirsk	0	Android	ads
1616	1	36	Russia	Orekhovo-Borisovo Yuzhnoye	4	Android	organic
1617	1	52	Russia	Orenburg	4	Android	ads
1618	1	23	Russia	Saint Petersburg	1	Android	organic
1619	1	47	Russia	Volgodonsk	3	Android	ads
1620	1	28	Russia	Belgorod	1	Android	organic
1621	1	22	Russia	Moscow	0	Android	organic
1622	0	18	Russia	Ufa	0	iOS	ads
1623	1	29	Ukraine	Chernivtsi	2	Android	organic
1624	1	46	Russia	Ufa	2	Android	organic
1625	0	14	Russia	Saint Petersburg	2	Android	organic
1626	1	40	Russia	Krasnoufimsk	3	Android	ads
1627	0	17	Russia	Pskov	1	Android	organic
1628	1	14	Russia	Orsk	2	iOS	organic
1629	1	26	Russia	Ruzayevka	4	Android	organic
1630	1	15	Russia	Chaykovskiy	2	Android	ads
1631	1	17	Russia	Yakutsk	2	iOS	organic
1632	1	15	Russia	Vladivostok	2	Android	organic
\.


-- Completed on 2025-09-04 22:02:08

--
-- PostgreSQL database dump complete
--

\unrestrict l0LUkGVMvsYLa1kivaF7GZhr7gliqmCpbgVTwEOwPF0TRHUL2KW6Gy2JCF2mfFE

